#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _201 = 0.0f.xxxx;
static float4 _203 = 0.0f.xxxx;

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
cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
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
    float2 _251 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _253 = 1.0f - dot(_251, _251);
    float _255 = sqrt(isnan(0.0f) ? _253 : (isnan(_253) ? 0.0f : max(_253, 0.0f)));
    float _256 = _251.x;
    float3 _258 = float3(_256, _251.y, _255);
    float3 _261 = normalize(float3(_255, 0.0f, -_256));
    float4 _284 = float4(mad(gl_FragCoord.xy - View_View_ViewRectMin.xy, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _288 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _292 = _288.xyz / _288.w.xxx;
    float3 _293 = _292 - View_View_RelativePreViewTranslation;
    float4 _297 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _311 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _320 = dot(_297, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _326 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _335 = dot(_297, Material_Material_PreshaderBuffer[2]).xxx;
    float3 _345 = normalize(mul(normalize((mad(float4(_311, sqrt(clamp(1.0f - dot(_311, _311), 0.0f, 1.0f)), 1.0f).xyz, _320, float4(_326, sqrt(clamp(1.0f - dot(_326, _326), 0.0f, 1.0f)), 1.0f).xyz * _335) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_261, cross(_258, _261), _258), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _352 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx);
    float2 _356 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].x.xx;
    float4 _360 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _356, View_View_MaterialTextureMipBias);
    float4 _365 = Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _356, View_View_MaterialTextureMipBias);
    float4 _372 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _377 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _384 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _389 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _396 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _401 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _408 = clamp(mad(_360.xyz, _320, _365.xyz * _335), 0.0f.xxx, 1.0f.xxx);
    float _409 = clamp(mad(_372.xyz, _320, _377.xyz * _335).x, 0.0f, 1.0f);
    float _413 = mad(clamp(mad(_384.xyz, _320, _389.xyz * _335).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _414 = clamp(mad(_396.xyz, _320, _401.xyz * _335).x, 0.0f, 1.0f);
    uint _415 = in_var_PRIMITIVE_ID * 41u;
    float _461 = 0.0f;
    float _462 = 0.0f;
    float _463 = 0.0f;
    float3 _464 = 0.0f.xxx;
    float3 _465 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_415 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _431 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _435 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _431, 0.0f);
        float4 _439 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _431, 0.0f);
        float4 _443 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _431, 0.0f);
        float _453 = _443.w;
        _461 = mad(_413, _453, _443.z);
        _462 = mad(_409, _453, _443.y);
        _463 = _443.x;
        _464 = (_408 * _435.w) + _435.xyz;
        _465 = normalize((_345 * _439.w) + ((_439.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _461 = _413;
        _462 = _409;
        _463 = 0.0f;
        _464 = _408;
        _465 = _345;
    }
    uint _468 = asuint(asfloat(View_PrimitiveSceneData.Load4(_415 * 16 + 0)).x);
    bool _484 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _490 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_415 * 16 + 0)).x) & 2u) != 0u) && _484)
    {
        _490 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _490 = 1.0f;
    }
    float _540 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_415 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _508 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _293, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _519 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_508.x), int(_508.y), int(_508.z), 0).xyz, 0)));
        _540 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_519.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_508 / _519.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _540 = _490;
    }
    float4 _594 = 0.0f.xxxx;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_415 * 16 + 0)).x) & 32u) != 0u)
    {
        float _549 = _284.w;
        float _565 = (_284.z / _549) - (in_var_VELOCITY_PREV_POS.z / in_var_VELOCITY_PREV_POS.w);
        float2 _569 = float3(((_284.xy / _549.xx) - View_View_TemporalAAJitter.xy) - ((in_var_VELOCITY_PREV_POS.xy / in_var_VELOCITY_PREV_POS.w.xx) - View_View_TemporalAAJitter.zw), _565).xy;
        float2 _579 = (((float2(int2(sign(_569))) * sqrt(abs(_569))) * 1.41421353816986083984375f).xy * 0.2495000064373016357421875f) + 0.49999237060546875f.xx;
        float4 _580 = float4(_579.x, _579.y, _201.z, _201.w);
        uint _581 = asuint(_565);
        _580.z = clamp(mad(float((_581 >> 16u) & 65535u), 1.525902189314365386962890625e-05f, 1.525902234789100475609302520752e-06f), 0.0f, 1.0f);
        _580.w = clamp(mad(float((_581 >> 0u) & 65535u), 1.525902189314365386962890625e-05f, 1.525902234789100475609302520752e-06f), 0.0f, 1.0f);
        _594 = _580;
    }
    else
    {
        _594 = 0.0f.xxxx;
    }
    float3 _607 = ((_464 - (_464 * _463)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _614 = (lerp((0.07999999821186065673828125f * _462).xxx, _464, _463.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _617 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _622 = 0.0f.xxx;
    if (_617)
    {
        _622 = _607 + (_614 * 0.449999988079071044921875f);
    }
    else
    {
        _622 = _607;
    }
    bool3 _623 = _617.xxx;
    float3 _624 = float3(_623.x ? 0.0f.xxx.x : _614.x, _623.y ? 0.0f.xxx.y : _614.y, _623.z ? 0.0f.xxx.z : _614.z);
    float3 _626 = dot(_624, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _633 = _414.xxx;
    float3 _638 = ((((((_626 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _414) + ((_626 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _414) + ((_626 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _414;
    bool3 _888 = isnan(_633);
    bool3 _889 = isnan(_638);
    float3 _890 = max(_633, _638);
    float3 _891 = float3(_888.x ? _638.x : _890.x, _888.y ? _638.y : _890.y, _888.z ? _638.z : _890.z);
    float3 _702 = 0.0f.xxx;
    if (_484)
    {
        float3 _654 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _293, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _658 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _654);
        float4 _662 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _654);
        float4 _665 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _654);
        float4 _683 = 0.0f.xxxx;
        _683.y = (-0.48860299587249755859375f) * _465.y;
        _683.z = 0.48860299587249755859375f * _465.z;
        _683.w = (-0.48860299587249755859375f) * _465.x;
        _683.x = 0.886227548122406005859375f;
        float3 _692 = _683.yzw * 2.094395160675048828125f;
        float4 _693 = float4(_683.x, _692.x, _692.y, _692.z);
        float3 _695 = 0.0f.xxx;
        _695.x = dot(float4(_658.x, _662.x, _665.x, _658.w), _693);
        _695.y = dot(float4(_658.y, _662.y, _665.y, _662.w), _693);
        _695.z = dot(float4(_658.z, _662.z, _665.zw), _693);
        bool3 _895 = isnan(0.0f.xxx);
        bool3 _896 = isnan(_695);
        float3 _897 = max(0.0f.xxx, _695);
        float3 _898 = float3(_895.x ? _695.x : _897.x, _895.y ? _695.y : _897.y, _895.z ? _695.z : _897.z);
        _702 = float3(_896.x ? 0.0f.xxx.x : _898.x, _896.y ? 0.0f.xxx.y : _898.y, _896.z ? 0.0f.xxx.z : _898.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _702 = 0.0f.xxx;
    }
    float3 _705 = _702 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _718 = ((((((_464 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _414) + ((_464 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _414) + ((_464 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _414;
    bool3 _900 = isnan(_633);
    bool3 _901 = isnan(_718);
    float3 _902 = max(_633, _718);
    float3 _903 = float3(_900.x ? _718.x : _902.x, _900.y ? _718.y : _902.y, _900.z ? _718.z : _902.z);
    bool3 _905 = isnan(_352);
    bool3 _906 = isnan(0.0f.xxx);
    float3 _907 = max(_352, 0.0f.xxx);
    float3 _908 = float3(_905.x ? 0.0f.xxx.x : _907.x, _905.y ? 0.0f.xxx.y : _907.y, _905.z ? 0.0f.xxx.z : _907.z);
    float3 _726 = float3(_906.x ? _352.x : _908.x, _906.y ? _352.y : _908.y, _906.z ? _352.z : _908.z);
    float3 _806 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _752 = _415 + 31u;
        float3 _761 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_415 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_293 - asfloat(View_PrimitiveSceneData.Load4((_415 + 18u) * 16 + 0)).xyz));
        float3 _762 = float3(asfloat(View_PrimitiveSceneData.Load4((_415 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_415 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_415 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _805 = 0.0f.xxx;
        if (any(bool3(_761.x > _762.x, _761.y > _762.y, _761.z > _762.z)))
        {
            float3 _785 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _786 = _293 * 0.57700002193450927734375f.xxx;
            float3 _801 = frac(mad((_786.x + _786.y) + _786.z, 0.00200000009499490261077880859375f, frac(((_785.x + _785.y) + _785.z) * 4194.30419921875f))).xxx;
            _805 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_801.x > 0.5f.xxx.x, _801.y > 0.5f.xxx.y, _801.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _784 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_752 * 16 + 0)).x > 0.0f)
            {
                float3 _772 = abs(_292 - in_var_TEXCOORD9);
                float _773 = _772.x;
                float _774 = _772.y;
                float _775 = _772.z;
                float _776 = isnan(_775) ? _774 : (isnan(_774) ? _775 : max(_774, _775));
                _784 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_776) ? _773 : (isnan(_773) ? _776 : max(_773, _776))) - asfloat(View_PrimitiveSceneData.Load4(_752 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _784 = _726;
            }
            _805 = _784;
        }
        _806 = _805;
    }
    else
    {
        _806 = _726;
    }
    float4 _813 = float4((mad(_705 * _622, float3(_901.x ? _633.x : _903.x, _901.y ? _633.y : _903.y, _901.z ? _633.z : _903.z), lerp(0.0f.xxx, _622 + (_624 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _806) * 1.0f, 0.0f);
    float4 _820 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _819 = _813;
        _819.w = 0.0f;
        _820 = _819;
    }
    else
    {
        _820 = _813;
    }
    float2 _824 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _839 = (_465 * 0.5f) + 0.5f.xxx;
    float4 _841 = 0.0f.xxxx;
    _841.x = _839.x;
    _841.y = _839.y;
    _841.z = _839.z;
    _841.w = mad(2.0f, float((_468 & 256u) != 0u), float((_468 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _848 = 0.0f.xxxx;
    _848.x = _464.x;
    _848.y = _464.y;
    _848.z = _464.z;
    _848.w = mad(frac(dot(_824.xyx * _824.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_705, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_889.x ? _633.x : _891.x, _889.y ? _633.y : _891.y, _889.z ? _633.z : _891.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _855 = 0.0f.xxxx;
    _855.x = _594.x;
    _855.y = _594.y;
    _855.z = _594.z;
    _855.w = _594.w;
    float4 _862 = 0.0f.xxxx;
    _862.x = _540;
    _862.y = 1.0f;
    _862.z = 1.0f;
    _862.w = 1.0f;
    float4 _867 = _820 * View_View_PreExposure;
    float3 _868 = _867.xyz;
    bool3 _924 = isnan(_868);
    bool3 _925 = isnan(32256.0f.xxx);
    float3 _926 = min(_868, 32256.0f.xxx);
    float3 _927 = float3(_924.x ? 32256.0f.xxx.x : _926.x, _924.y ? 32256.0f.xxx.y : _926.y, _924.z ? 32256.0f.xxx.z : _926.z);
    float3 _869 = float3(_925.x ? _868.x : _927.x, _925.y ? _868.y : _927.y, _925.z ? _868.z : _927.z);
    out_var_SV_Target0 = float4(_869.x, _869.y, _869.z, _867.w);
    out_var_SV_Target1 = _841;
    out_var_SV_Target2 = float4(_463, _462, _461, 0.0039215688593685626983642578125f);
    out_var_SV_Target3 = _848;
    out_var_SV_Target4 = _855;
    out_var_SV_Target6 = _862;
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
