﻿Shader "Custom/ToonShaderNoNormal"
{
	Properties
	{
		_Color("Color", Color) = (0.5, 0.65, 1, 1)
		_MainTex("Main Texture", 2D) = "white" {}

		[HDR]
		_AmbientColor("Ambient Color", Color) = (0.4,0.4,0.4,1)
		[HDR]
		_SpecularColor("Specular Color", Color) = (0.9,0.9,0.9,1)
		_Glossiness("Glossiness", Float) = 32
		[HDR]
		_RimColor("Rim Color", Color) = (1,1,1,1)
		_RimAmount("Rim Amount", Range(0, 1)) = 0.716
		_RimThreshold("Rim Threshold", Range(0, 1)) = 0.1

	}
		SubShader
		{
			Pass
			{
				Tags
				{
					"LightMode" = "ForwardBase"
					"PassFlags" = "OnlyDirectional"
				}

				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma multi_compile_fwdbase

				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "AutoLight.cginc"

				struct appdata
				{
					float4 vertex : POSITION;
					float4 uv : TEXCOORD0;
					// Inside the appdata struct.
					float3 normal : NORMAL;
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float2 uv : TEXCOORD0;
					float3 worldNormal : NORMAL;
					float3 viewDir : TEXCOORD1;

					SHADOW_COORDS(2)


				};

				sampler2D _MainTex;
				float4 _MainTex_ST;
				sampler2D _BumpMap;
				float4 _BumpMap_ST;

				float4 _Color;

				float4 _SpecularColor;
				float _Glossiness;
				float4 _RimColor;
				float _RimAmount;
				float _RimThreshold;

				//Ambient from above
				float4 _AmbientColor;


				//Vertex shader
				v2f vert(appdata v, appdata_tan at)
				{
					v2f o;
					o.pos = UnityObjectToClipPos(v.vertex);
					o.uv = v.uv;
					o.worldNormal = UnityObjectToWorldNormal(v.normal);
					o.viewDir = WorldSpaceViewDir(v.vertex);

					TRANSFER_SHADOW(o)

					return o;
				}

				//Frament shader 
				float4 frag(v2f i) : SV_Target
				{

					float3 viewDir = normalize(i.viewDir);
					float3 halfVector = normalize(_WorldSpaceLightPos0 + viewDir);
					float3 normal = normalize(i.worldNormal);
					float NdotL = dot(_WorldSpaceLightPos0, normal);
					float NdotH = dot(normal, halfVector);

					//for shadow slowly changing rather than smooth
					float2 uv = float2(1 - (NdotL * 0.5 + 0.5), 0.5);

					float4 rimDot = 1 - dot(viewDir, normal);
					//float rimIntensity = smoothstep(_RimAmount - 0.01, _RimAmount + 0.01, rimDot);
					float rimIntensity = rimDot * pow(NdotL, _RimThreshold);
					rimIntensity = smoothstep(_RimAmount - 0.01, _RimAmount + 0.01, rimIntensity);
					float4 rim = rimIntensity * _RimColor;



					/*float lightIntensity = 0;

					if (NdotL > 0) {
						lightIntensity = 1;
					}*/
					//change the 0.01 for the smoothness between shadows
					float shadow = SHADOW_ATTENUATION(i);

					float lightIntensity = smoothstep(0, 0.01, NdotL * shadow);
					float4 light = lightIntensity * _LightColor0;

					float specularIntensity = pow(NdotH * lightIntensity, _Glossiness * _Glossiness);
					float specularIntensitySmooth = smoothstep(0.005, 0.01, specularIntensity);
					float4 specular = specularIntensitySmooth * _SpecularColor;


					float4 sample = tex2D(_MainTex, TRANSFORM_TEX(i.uv, _MainTex));
					return _Color * sample * (_AmbientColor + light + specular + rim);
				}
				ENDCG
			}
			UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"

		}
}