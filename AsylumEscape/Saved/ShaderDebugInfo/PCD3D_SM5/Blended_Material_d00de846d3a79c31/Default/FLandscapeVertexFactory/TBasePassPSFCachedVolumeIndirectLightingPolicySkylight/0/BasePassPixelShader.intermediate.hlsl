#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _206 = 0.0f.xxxx;
static float3 _207 = 0.0f.xxx;
static float4 _209 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c48);
    float3 View_View_ViewTilePosition : packoffset(c64);
    float3 View_View_RelativePreViewTranslation : packoffset(c76);
    float4 View_View_TemporalAAJitter : packoffset(c125);
    float4 View_View_ViewRectMin : packoffset(c128);
    float4 View_View_ViewSizeAndInvSize : packoffset(c129);
    float4 View_View_BufferSizeAndInvSize : packoffset(c132);
    float View_View_PreExposure : packoffset(c136.y);
    float4 View_View_DiffuseOverrideParameter : packoffset(c137);
    float4 View_View_SpecularOverrideParameter : packoffset(c138);
    float4 View_View_NormalOverrideParameter : packoffset(c139);
    float2 View_View_RoughnessOverrideParameter : packoffset(c140);
    float View_View_OutOfBoundsMask : packoffset(c141);
    float View_View_MaterialTextureMipBias : packoffset(c144);
    float View_View_UnlitViewmodeMask : packoffset(c146.y);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c159);
    float View_View_RenderingReflectionCaptureMask : packoffset(c183.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c186.y);
    float4 View_View_SkyLightColor : packoffset(c187);
    float View_View_ShowDecalsMask : packoffset(c196.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c228.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c233);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c234);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c235);
    float View_View_VolumetricLightmapBrickSize : packoffset(c235.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c236);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c236.w);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_SkyIrradianceEnvironmentMap;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c140);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[5] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
SamplerState OpaqueBasePass_DBufferBTextureSampler;
SamplerState OpaqueBasePass_DBufferCTextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 in_var_VELOCITY_PREV_POS;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target4;
static float4 out_var_SV_Target6;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 in_var_VELOCITY_PREV_POS : VELOCITY_PREV_POS;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target4 : SV_Target4;
    float4 out_var_SV_Target6 : SV_Target6;
};

void frag_main()
{
    float2 _260 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _262 = 1.0f - dot(_260, _260);
    float _264 = sqrt(isnan(0.0f) ? _262 : (isnan(_262) ? 0.0f : max(_262, 0.0f)));
    float _265 = _260.x;
    float3 _267 = float3(_265, _260.y, _264);
    float3 _270 = normalize(float3(_264, 0.0f, -_265));
    float4 _293 = float4(mad(gl_FragCoord.xy - View_View_ViewRectMin.xy, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _297 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _301 = _297.xyz / _297.w.xxx;
    float3 _302 = _301 - View_View_RelativePreViewTranslation;
    float4 _306 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _320 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _329 = dot(_306, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _335 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _344 = dot(_306, Material_Material_PreshaderBuffer[2]).xxx;
    float3 _354 = normalize(mul(normalize((mad(float4(_320, sqrt(clamp(1.0f - dot(_320, _320), 0.0f, 1.0f)), 1.0f).xyz, _329, float4(_335, sqrt(clamp(1.0f - dot(_335, _335), 0.0f, 1.0f)), 1.0f).xyz * _344) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_270, cross(_267, _270), _267), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _361 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx);
    float2 _365 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].x.xx;
    float4 _369 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _365, View_View_MaterialTextureMipBias);
    float4 _374 = Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _365, View_View_MaterialTextureMipBias);
    float4 _381 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _386 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _393 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _398 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _405 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _410 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _417 = clamp(mad(_369.xyz, _329, _374.xyz * _344), 0.0f.xxx, 1.0f.xxx);
    float _418 = clamp(mad(_381.xyz, _329, _386.xyz * _344).x, 0.0f, 1.0f);
    float _422 = mad(clamp(mad(_393.xyz, _329, _398.xyz * _344).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _423 = clamp(mad(_405.xyz, _329, _410.xyz * _344).x, 0.0f, 1.0f);
    uint _424 = in_var_PRIMITIVE_ID * 41u;
    float _470 = 0.0f;
    float _471 = 0.0f;
    float _472 = 0.0f;
    float3 _473 = 0.0f.xxx;
    float3 _474 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_424 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _440 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _444 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _440, 0.0f);
        float4 _448 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _440, 0.0f);
        float4 _452 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _440, 0.0f);
        float _462 = _452.w;
        _470 = mad(_422, _462, _452.z);
        _471 = mad(_418, _462, _452.y);
        _472 = _452.x;
        _473 = (_417 * _444.w) + _444.xyz;
        _474 = normalize((_354 * _448.w) + ((_448.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _470 = _422;
        _471 = _418;
        _472 = 0.0f;
        _473 = _417;
        _474 = _354;
    }
    uint _477 = asuint(asfloat(View_PrimitiveSceneData.Load4(_424 * 16 + 0)).x);
    bool _493 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _499 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_424 * 16 + 0)).x) & 2u) != 0u) && _493)
    {
        _499 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _499 = 1.0f;
    }
    float _549 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_424 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _517 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _302, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _528 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_517.x), int(_517.y), int(_517.z), 0).xyz, 0)));
        _549 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_528.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_517 / _528.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _549 = _499;
    }
    float4 _603 = 0.0f.xxxx;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_424 * 16 + 0)).x) & 32u) != 0u)
    {
        float _558 = _293.w;
        float _574 = (_293.z / _558) - (in_var_VELOCITY_PREV_POS.z / in_var_VELOCITY_PREV_POS.w);
        float2 _578 = float3(((_293.xy / _558.xx) - View_View_TemporalAAJitter.xy) - ((in_var_VELOCITY_PREV_POS.xy / in_var_VELOCITY_PREV_POS.w.xx) - View_View_TemporalAAJitter.zw), _574).xy;
        float2 _588 = (((float2(int2(sign(_578))) * sqrt(abs(_578))) * 1.41421353816986083984375f).xy * 0.2495000064373016357421875f) + 0.49999237060546875f.xx;
        float4 _589 = float4(_588.x, _588.y, _206.z, _206.w);
        uint _590 = asuint(_574);
        _589.z = clamp(mad(float((_590 >> 16u) & 65535u), 1.525902189314365386962890625e-05f, 1.525902234789100475609302520752e-06f), 0.0f, 1.0f);
        _589.w = clamp(mad(float((_590 >> 0u) & 65535u), 1.525902189314365386962890625e-05f, 1.525902234789100475609302520752e-06f), 0.0f, 1.0f);
        _603 = _589;
    }
    else
    {
        _603 = 0.0f.xxxx;
    }
    float3 _616 = ((_473 - (_473 * _472)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _623 = (lerp((0.07999999821186065673828125f * _471).xxx, _473, _472.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _626 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _631 = 0.0f.xxx;
    if (_626)
    {
        _631 = _616 + (_623 * 0.449999988079071044921875f);
    }
    else
    {
        _631 = _616;
    }
    bool3 _632 = _626.xxx;
    float3 _633 = float3(_632.x ? 0.0f.xxx.x : _623.x, _632.y ? 0.0f.xxx.y : _623.y, _632.z ? 0.0f.xxx.z : _623.z);
    float3 _635 = dot(_633, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _642 = _423.xxx;
    float3 _647 = ((((((_635 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _423) + ((_635 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _423) + ((_635 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _423;
    bool3 _974 = isnan(_642);
    bool3 _975 = isnan(_647);
    float3 _976 = max(_642, _647);
    float3 _977 = float3(_974.x ? _647.x : _976.x, _974.y ? _647.y : _976.y, _974.z ? _647.z : _976.z);
    float3 _711 = 0.0f.xxx;
    if (_493)
    {
        float3 _663 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _302, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _667 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _663);
        float4 _671 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _663);
        float4 _674 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _663);
        float4 _692 = 0.0f.xxxx;
        _692.y = (-0.48860299587249755859375f) * _474.y;
        _692.z = 0.48860299587249755859375f * _474.z;
        _692.w = (-0.48860299587249755859375f) * _474.x;
        _692.x = 0.886227548122406005859375f;
        float3 _701 = _692.yzw * 2.094395160675048828125f;
        float4 _702 = float4(_692.x, _701.x, _701.y, _701.z);
        float3 _704 = 0.0f.xxx;
        _704.x = dot(float4(_667.x, _671.x, _674.x, _667.w), _702);
        _704.y = dot(float4(_667.y, _671.y, _674.y, _671.w), _702);
        _704.z = dot(float4(_667.z, _671.z, _674.zw), _702);
        bool3 _981 = isnan(0.0f.xxx);
        bool3 _982 = isnan(_704);
        float3 _983 = max(0.0f.xxx, _704);
        float3 _984 = float3(_981.x ? _704.x : _983.x, _981.y ? _704.y : _983.y, _981.z ? _704.z : _983.z);
        _711 = float3(_982.x ? 0.0f.xxx.x : _984.x, _982.y ? 0.0f.xxx.y : _984.y, _982.z ? 0.0f.xxx.z : _984.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _711 = 0.0f.xxx;
    }
    float3 _789 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _741 = 0.0f;
        float _742 = 0.0f;
        float3 _743 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _731 = 0.0f.xxx;
            float _732 = 0.0f;
            if (_493)
            {
                _731 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _732 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _731 = _474;
                _732 = 1.0f;
            }
            float _735 = mad(_732 - 1.0f, 1.0f - _732, 1.0f);
            _741 = lerp(clamp(dot(_731, _474), 0.0f, 1.0f), 1.0f, _735);
            _742 = _732;
            _743 = lerp(_731, _474, _735.xxx);
        }
        else
        {
            _741 = 1.0f;
            _742 = 1.0f;
            _743 = _474;
        }
        float4 _747 = float4(_743, 1.0f);
        float3 _751 = 0.0f.xxx;
        _751.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _747);
        _751.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _747);
        _751.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _747);
        float4 _762 = _747.xyzz * _747.yzzx;
        float3 _766 = 0.0f.xxx;
        _766.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _762);
        _766.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _762);
        _766.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _762);
        float3 _783 = (_751 + _766) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_743.x, _743.x, -(_743.y * _743.y)));
        bool3 _994 = isnan(0.0f.xxx);
        bool3 _995 = isnan(_783);
        float3 _996 = max(0.0f.xxx, _783);
        float3 _997 = float3(_994.x ? _783.x : _996.x, _994.y ? _783.y : _996.y, _994.z ? _783.z : _996.z);
        _789 = (float3(_995.x ? 0.0f.xxx.x : _997.x, _995.y ? 0.0f.xxx.y : _997.y, _995.z ? 0.0f.xxx.z : _997.z) * View_View_SkyLightColor.xyz) * (_742 * _741);
    }
    else
    {
        _789 = 0.0f.xxx;
    }
    float3 _790 = mad(_711, View_View_PrecomputedIndirectLightingColorScale, _789);
    float3 _803 = ((((((_473 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _423) + ((_473 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _423) + ((_473 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _423;
    bool3 _999 = isnan(_642);
    bool3 _1000 = isnan(_803);
    float3 _1001 = max(_642, _803);
    float3 _1002 = float3(_999.x ? _803.x : _1001.x, _999.y ? _803.y : _1001.y, _999.z ? _803.z : _1001.z);
    bool3 _1004 = isnan(_361);
    bool3 _1005 = isnan(0.0f.xxx);
    float3 _1006 = max(_361, 0.0f.xxx);
    float3 _1007 = float3(_1004.x ? 0.0f.xxx.x : _1006.x, _1004.y ? 0.0f.xxx.y : _1006.y, _1004.z ? 0.0f.xxx.z : _1006.z);
    float3 _811 = float3(_1005.x ? _361.x : _1007.x, _1005.y ? _361.y : _1007.y, _1005.z ? _361.z : _1007.z);
    float3 _891 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _837 = _424 + 31u;
        float3 _846 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_424 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_302 - asfloat(View_PrimitiveSceneData.Load4((_424 + 18u) * 16 + 0)).xyz));
        float3 _847 = float3(asfloat(View_PrimitiveSceneData.Load4((_424 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_424 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_424 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _890 = 0.0f.xxx;
        if (any(bool3(_846.x > _847.x, _846.y > _847.y, _846.z > _847.z)))
        {
            float3 _870 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _871 = _302 * 0.57700002193450927734375f.xxx;
            float3 _886 = frac(mad((_871.x + _871.y) + _871.z, 0.00200000009499490261077880859375f, frac(((_870.x + _870.y) + _870.z) * 4194.30419921875f))).xxx;
            _890 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_886.x > 0.5f.xxx.x, _886.y > 0.5f.xxx.y, _886.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _869 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_837 * 16 + 0)).x > 0.0f)
            {
                float3 _857 = abs(_301 - in_var_TEXCOORD9);
                float _858 = _857.x;
                float _859 = _857.y;
                float _860 = _857.z;
                float _861 = isnan(_860) ? _859 : (isnan(_859) ? _860 : max(_859, _860));
                _869 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_861) ? _858 : (isnan(_858) ? _861 : max(_858, _861))) - asfloat(View_PrimitiveSceneData.Load4(_837 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _869 = _811;
            }
            _890 = _869;
        }
        _891 = _890;
    }
    else
    {
        _891 = _811;
    }
    float4 _898 = float4((mad(_790 * _631, float3(_1000.x ? _642.x : _1002.x, _1000.y ? _642.y : _1002.y, _1000.z ? _642.z : _1002.z), lerp(0.0f.xxx, _631 + (_633 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _891) * 1.0f, 0.0f);
    float4 _905 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _904 = _898;
        _904.w = 0.0f;
        _905 = _904;
    }
    else
    {
        _905 = _898;
    }
    float2 _909 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _924 = (_474 * 0.5f) + 0.5f.xxx;
    float4 _926 = 0.0f.xxxx;
    _926.x = _924.x;
    _926.y = _924.y;
    _926.z = _924.z;
    _926.w = mad(2.0f, float((_477 & 256u) != 0u), float((_477 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _933 = 0.0f.xxxx;
    _933.x = _473.x;
    _933.y = _473.y;
    _933.z = _473.z;
    _933.w = mad(frac(dot(_909.xyx * _909.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_790, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_975.x ? _642.x : _977.x, _975.y ? _642.y : _977.y, _975.z ? _642.z : _977.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _940 = 0.0f.xxxx;
    _940.x = _603.x;
    _940.y = _603.y;
    _940.z = _603.z;
    _940.w = _603.w;
    float4 _947 = 0.0f.xxxx;
    _947.x = _549;
    _947.y = 1.0f;
    _947.z = 1.0f;
    _947.w = 1.0f;
    float4 _952 = _905 * View_View_PreExposure;
    float3 _953 = _952.xyz;
    bool3 _1023 = isnan(_953);
    bool3 _1024 = isnan(32256.0f.xxx);
    float3 _1025 = min(_953, 32256.0f.xxx);
    float3 _1026 = float3(_1023.x ? 32256.0f.xxx.x : _1025.x, _1023.y ? 32256.0f.xxx.y : _1025.y, _1023.z ? 32256.0f.xxx.z : _1025.z);
    float3 _954 = float3(_1024.x ? _953.x : _1026.x, _1024.y ? _953.y : _1026.y, _1024.z ? _953.z : _1026.z);
    out_var_SV_Target0 = float4(_954.x, _954.y, _954.z, _952.w);
    out_var_SV_Target1 = _926;
    out_var_SV_Target2 = float4(_472, _471, _470, 0.0039215688593685626983642578125f);
    out_var_SV_Target3 = _933;
    out_var_SV_Target4 = _940;
    out_var_SV_Target6 = _947;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    in_var_VELOCITY_PREV_POS = stage_input.in_var_VELOCITY_PREV_POS;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target4 = out_var_SV_Target4;
    stage_output.out_var_SV_Target6 = out_var_SV_Target6;
    return stage_output;
}
