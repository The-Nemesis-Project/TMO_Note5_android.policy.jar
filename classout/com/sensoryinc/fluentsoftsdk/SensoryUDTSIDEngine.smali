.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngine.java"


# static fields
.field private static final MODELS_CA38:Ljava/lang/String; = "/system/wakeupdata/samsung/models_ca38.bin"

.field private static final MODELS_WA38:Ljava/lang/String; = "/system/wakeupdata/samsung/models_wa38.bin"

.field private static final SUBTAG:Ljava/lang/String; = "secMM: "

.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngine"

.field private static final UDTSID_ENROLL_CNT:S = 0x4s

.field private static final UDTSID_NUM_USERS:S = 0x5s

.field private static final UDTSIDnetfile:Ljava/lang/String; = "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

.field private static final UDTSIDsearchfile:Ljava/lang/String; = "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

.field public static VERSION_MAJOR:I = 0x0

.field public static VERSION_MINOR:I = 0x0

.field private static m_strFPSVnet:Ljava/lang/String; = null

.field private static m_strFPSVsearch:Ljava/lang/String; = null

.field private static m_strFPSVsvsid:Ljava/lang/String; = null

.field private static m_strLanguage:Ljava/lang/String; = null

.field private static m_strResourceDir:Ljava/lang/String; = null

.field private static final udtsvsidfile:Ljava/lang/String; = "/system/wakeupdata/sensory/svsid_1_1.raw"


# instance fields
.field private m_lSessionValue:J

.field private m_lSessionValueFPSV:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    .line 34
    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    .line 35
    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 32
    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-void
.end method

.method private GetLanguageIndex()I
    .registers 6

    .prologue
    .line 609
    const/4 v1, 0x1

    .line 611
    .local v1, "nIndex":I
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 613
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "GetLanguageIndex, m_strLanguage is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_c
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetLanguage(I)V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_f} :catch_c2

    .line 641
    :goto_f
    return v1

    .line 615
    :cond_10
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ko_kr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    goto :goto_c

    .line 616
    :cond_1c
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_c

    .line 617
    :cond_28
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_gb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v1, 0x2

    goto :goto_c

    .line 618
    :cond_34
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v1, 0x3

    goto :goto_c

    .line 619
    :cond_40
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v1, 0x4

    goto :goto_c

    .line 620
    :cond_4c
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "fr_fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v1, 0x5

    goto :goto_c

    .line 621
    :cond_58
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "de_de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v1, 0x6

    goto :goto_c

    .line 622
    :cond_64
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "it_it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v1, 0x7

    goto :goto_c

    .line 623
    :cond_70
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "zh_cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const/16 v1, 0x8

    goto :goto_c

    .line 624
    :cond_7d
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ja_jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/16 v1, 0x9

    goto :goto_c

    .line 625
    :cond_8a
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ru_ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    const/16 v1, 0xa

    goto/16 :goto_c

    .line 626
    :cond_98
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "pt_br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    const/16 v1, 0xb

    goto/16 :goto_c

    .line 629
    :cond_a6
    const-string v2, "SensoryUDTSIDEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetLanguageIndex, strLanguage is unknown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 636
    :catch_c2
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto/16 :goto_f
.end method

.method private SetFPSVResource()Z
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 559
    const/16 v6, 0xc

    new-array v2, v6, [[Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_ko_kr.raw"

    aput-object v7, v6, v4

    const-string v7, "search_ko_kr.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_ko_kr.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v4

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_gb.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_gb.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_gb.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_es.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_es.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_es.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v11

    const/4 v6, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_fr_fr.raw"

    aput-object v8, v7, v4

    const-string v8, "search_fr_fr.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_fr_fr.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_de_de.raw"

    aput-object v8, v7, v4

    const-string v8, "search_de_de.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_de_de.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x7

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_it_it.raw"

    aput-object v8, v7, v4

    const-string v8, "search_it_it.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_it_it.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x8

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_zh_cn.raw"

    aput-object v8, v7, v4

    const-string v8, "search_zh_cn.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_zh_cn.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x9

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ja_jp.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ja_jp.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ja_jp.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xa

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ru_ru.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ru_ru.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ru_ru.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xb

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_pt_br.raw"

    aput-object v8, v7, v4

    const-string v8, "search_pt_br.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_pt_br.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    .line 575
    .local v2, "strResources":[[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->GetLanguageIndex()I

    move-result v0

    .line 577
    .local v0, "nIndex":I
    const-string v3, "higalaxy_"

    .line 578
    .local v3, "strTrigger":Ljava/lang/String;
    sget v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v6, v11, :cond_e0

    .line 580
    const-string v3, "okgoogle_"

    .line 583
    :cond_e0
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV recog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV search : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV ubm : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    if-nez v6, :cond_14c

    .line 589
    const-string v5, "SensoryUDTSIDEngine"

    const-string v6, "SetResourceforFPSV, m_strResourceDir is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_14b
    return v4

    .line 593
    :cond_14c
    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 594
    .local v1, "nLen":I
    if-lez v1, :cond_177

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_177

    .line 596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 599
    :cond_177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    move v4, v5

    .line 603
    goto/16 :goto_14b
.end method

.method public static init()I
    .registers 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 93
    .local v1, "nResult":I
    :try_start_1
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Trying to load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, "SensoryUDTSIDEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Loading libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1f

    .line 108
    :goto_14
    return v1

    .line 97
    :catch_15
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "WARNING: libSensoryUDTSIDEngine Could not load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, -0x1

    .line 106
    goto :goto_14

    .line 102
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1f
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 v1, -0x1

    goto :goto_14
.end method


# virtual methods
.method public native CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public GetFWVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native GetVersion()Ljava/lang/String;
.end method

.method public native GetWakeUpModel(IS)Ljava/lang/String;
.end method

.method public native SetLanguage(I)V
.end method

.method public SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "strResourceDir"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 550
    sput-object p1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 551
    sput-object p2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public SetSessionValueFPSV(J)V
    .registers 6
    .param p1, "lSessionValueFPSV"    # J

    .prologue
    .line 130
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 132
    return-void
.end method

.method public SetSessionValueUDT(J)V
    .registers 6
    .param p1, "lSessionValue"    # J

    .prologue
    .line 123
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 125
    return-void
.end method

.method public SetVersion(Ljava/lang/String;)V
    .registers 6
    .param p1, "strVersion"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "str":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_29

    .line 532
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_28
    return-void

    .line 536
    :cond_29
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    .line 537
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    .line 539
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public native SetWakeUpMode(I)V
.end method

.method public native SetWakeUpType(I)V
.end method

.method public native checkNewRecordings(JS)I
.end method

.method public native checkNewRecordings(JSI)I
.end method

.method public checkResultEnroll(SS)I
    .registers 12
    .param p1, "enrollIdx"    # S
    .param p2, "userID"    # S

    .prologue
    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, "recResult":I
    const/4 v1, 0x0

    .line 219
    .local v1, "nUDTResult":I
    const/4 v0, 0x0

    .line 221
    .local v0, "nFPSVResult":I
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkResultEnroll, enrollIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v6, :cond_36

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v7, :cond_36

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v3, :cond_97

    .line 227
    :cond_36
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_55

    .line 229
    iget-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 230
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_54

    if-ne v2, v6, :cond_54

    .line 232
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_FPSV"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sput v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 234
    invoke-virtual {p0, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 237
    :cond_54
    move v0, v2

    .line 240
    :cond_55
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_74

    .line 242
    iget-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 243
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_73

    if-ne v2, v6, :cond_73

    .line 245
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_UDT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sput v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 247
    invoke-virtual {p0, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 250
    :cond_73
    move v1, v2

    .line 264
    :cond_74
    :goto_74
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSG: checkResultEnroll, ResultUDT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ResultFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v2

    .line 253
    :cond_97
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v6, :cond_a3

    .line 255
    iget-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 256
    move v1, v2

    goto :goto_74

    .line 258
    :cond_a3
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v7, :cond_74

    .line 260
    iget-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 261
    move v0, v2

    goto :goto_74
.end method

.method public closeModels()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 512
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: closeModels, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_35

    .line 515
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 516
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 519
    :cond_35
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_42

    .line 521
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 522
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 524
    :cond_42
    return-void
.end method

.method public native closeRecog(J)V
.end method

.method public native closeSession(J)V
.end method

.method public consistencyCheckEnroll(S[SI)I
    .registers 14
    .param p1, "shUserID"    # S
    .param p2, "shProIndex"    # [S
    .param p3, "nEnrollResult"    # I

    .prologue
    const/4 v6, 0x1

    .line 272
    const/4 v1, 0x0

    .line 275
    .local v1, "nResult":I
    const-wide/16 v2, 0x0

    .line 276
    .local v2, "trig":J
    sget v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v5, v6, :cond_78

    .line 278
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 285
    :goto_a
    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v5, v6, :cond_7b

    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_7b

    .line 287
    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JS)I

    move-result v1

    .line 294
    :goto_18
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll.result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CommandNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v5, 0x5

    if-ne v1, v5, :cond_80

    .line 298
    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getFeedbackDetails(JS)[J

    move-result-object v0

    .line 300
    .local v0, "details":[J
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_42
    const/4 v5, 0x4

    if-ge v4, v5, :cond_80

    .line 302
    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_51

    .line 304
    const/4 v5, 0x0

    int-to-short v6, v4

    aput-short v6, p2, v5

    .line 307
    :cond_51
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll, Feedback details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 282
    .end local v0    # "details":[J
    .end local v4    # "x":I
    :cond_78
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto :goto_a

    .line 291
    :cond_7b
    invoke-virtual {p0, v2, v3, p1, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JSI)I

    move-result v1

    goto :goto_18

    .line 311
    :cond_80
    return v1
.end method

.method public deleteModel(Ljava/lang/String;S)I
    .registers 9
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 406
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: deleteModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    .line 409
    .local v0, "nResult":I
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2a

    .line 411
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "deleteModel, trig is ZERO!. need to load model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, -0x1

    .line 422
    :goto_29
    return v1

    .line 415
    :cond_2a
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v2, v3, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->deleteUser(JS)I

    move-result v0

    .line 416
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 418
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: deleteModel, re-doEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 422
    :cond_3d
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public native deleteUser(JS)I
.end method

.method public doCombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "recogFILE1"    # Ljava/lang/String;
    .param p2, "searchFILE1"    # Ljava/lang/String;
    .param p3, "recogFILE2"    # Ljava/lang/String;
    .param p4, "searchFILE2"    # Ljava/lang/String;
    .param p5, "saveDIR"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 350
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "VSG: doCombineModel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v6, 0x0

    .line 353
    .local v6, "strTarget":Ljava/lang/String;
    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 355
    const-string v6, "wa38"

    .line 366
    :goto_14
    const/4 v7, 0x0

    .line 368
    .local v7, "nNullCount":I
    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v1, v3, :cond_35

    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v2, 0x47

    if-gt v1, v2, :cond_35

    .line 370
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "CombineModel is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_26
    return v0

    .line 357
    .end local v7    # "nNullCount":I
    :cond_27
    const-string v1, "/system/wakeupdata/samsung/models_ca38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 359
    const-string v6, "ca38"

    goto :goto_14

    .line 363
    :cond_32
    const-string v6, "pc36"

    goto :goto_14

    .line 374
    .restart local v7    # "nNullCount":I
    :cond_35
    if-eqz p1, :cond_39

    if-nez p2, :cond_3f

    .line 376
    :cond_39
    add-int/lit8 v7, v7, 0x1

    .line 378
    const-string p1, ""

    .line 379
    const-string p2, ""

    .line 382
    :cond_3f
    if-eqz p3, :cond_43

    if-nez p4, :cond_49

    .line 384
    :cond_43
    add-int/lit8 v7, v7, 0x1

    .line 386
    const-string p3, ""

    .line 387
    const-string p4, ""

    .line 390
    :cond_49
    if-le v7, v3, :cond_b4

    .line 392
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "File path is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_b4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 400
    invoke-virtual/range {v0 .. v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_26
.end method

.method public native doEnroll(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public doEnrollModel(Ljava/lang/String;S)I
    .registers 8
    .param p1, "appDir"    # Ljava/lang/String;
    .param p2, "userIdx"    # S

    .prologue
    const/4 v4, 0x1

    .line 317
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: doEnrollModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v0, ""

    .line 321
    .local v0, "strTarget":Ljava/lang/String;
    if-ne p2, v4, :cond_27

    .line 323
    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 325
    const-string v0, "wa38"

    .line 337
    :cond_27
    :goto_27
    sget v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v1, v4, :cond_40

    .line 339
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 343
    :goto_31
    return v1

    .line 327
    :cond_32
    const-string v1, "/system/wakeupdata/samsung/models_ca38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 329
    const-string v0, "ca38"

    goto :goto_27

    .line 333
    :cond_3d
    const-string v0, "pc36"

    goto :goto_27

    .line 343
    :cond_40
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_31
.end method

.method public native getFeedbackDetails(JS)[J
.end method

.method public native getPhraseQuality(JS)F
.end method

.method public native getResultEnroll(JSS)I
.end method

.method public native getResultTest(JILjava/lang/String;)I
.end method

.method public getSessionValue()J
    .registers 5

    .prologue
    .line 137
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-wide v0
.end method

.method public getSessionValueFPSV()J
    .registers 5

    .prologue
    .line 145
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-wide v0
.end method

.method public native initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J
.end method

.method public native initSession()J
.end method

.method public native isAdaptRunning()I
.end method

.method public loadModels(Ljava/lang/String;S)I
    .registers 19
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 428
    const-wide/16 v14, 0x0

    .line 429
    .local v14, "UDTSIDinitRecogReturn":J
    const/4 v2, 0x0

    .line 431
    .local v2, "nResult":I
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_41

    invoke-direct/range {p0 .. p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetFPSVResource()Z

    move-result v3

    if-nez v3, :cond_41

    .line 433
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v3, 0x1

    sput v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 435
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 437
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_10a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10a

    .line 439
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 440
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 448
    :cond_41
    :goto_41
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadModels, m_lSessionValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m_lSessionValueFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_ba

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_ba

    .line 452
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: loadModels, Call initRecog, trigFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    sget-object v8, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    const/4 v10, 0x5

    const/4 v11, 0x4

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v12}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v14

    .line 455
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-eqz v3, :cond_132

    .line 457
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v3

    if-nez v3, :cond_125

    .line 459
    const/4 v2, 0x1

    .line 480
    :cond_ba
    :goto_ba
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_109

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_109

    .line 482
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: loadModels, Call initRecog, trig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v6, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

    const-string v7, "/system/wakeupdata/sensory/svsid_1_1.raw"

    const-string v8, "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

    const/4 v10, 0x5

    const/4 v11, 0x4

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v12}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v14

    .line 485
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-eqz v3, :cond_194

    .line 487
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v3

    if-nez v3, :cond_186

    .line 489
    const/4 v2, 0x1

    .line 507
    :cond_109
    :goto_109
    return v2

    .line 442
    :cond_10a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_41

    .line 444
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 445
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto/16 :goto_41

    .line 463
    :cond_125
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v5, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v2

    goto :goto_ba

    .line 468
    :cond_132
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trigFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 472
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 474
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v3, 0x1

    sput v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 476
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    goto/16 :goto_ba

    .line 493
    :cond_186
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v5, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v2

    goto/16 :goto_109

    .line 498
    :cond_194
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 501
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 503
    const/4 v2, 0x0

    goto/16 :goto_109
.end method

.method public native loadUsers(JS)I
.end method

.method public native pipeRecogEnroll(J[SJ)I
.end method

.method public native pipeRecogTest(J[SJ)I
.end method

.method public processEnroll([SI)I
    .registers 10
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, "nResult":I
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v1, :cond_f

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v2, :cond_f

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v0, :cond_2e

    .line 159
    :cond_f
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    .line 161
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    .line 164
    :cond_1e
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    .line 166
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    .line 178
    :cond_2d
    :goto_2d
    return v6

    .line 169
    :cond_2e
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v1, :cond_3c

    .line 171
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_2d

    .line 173
    :cond_3c
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v2, :cond_2d

    .line 175
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_2d
.end method

.method public processVerify([SILjava/lang/String;[S)I
    .registers 14
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I
    .param p3, "ROOT"    # Ljava/lang/String;
    .param p4, "CommandType"    # [S

    .prologue
    const/4 v8, 0x0

    .line 184
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 186
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processVerify , trig is ZERO, terminate to verify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v6, -0xc

    .line 210
    :goto_12
    return v6

    .line 190
    :cond_13
    const/4 v6, 0x0

    .line 191
    .local v6, "iResult":I
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogTest(J[SJ)I

    move-result v7

    .line 193
    .local v7, "nRecogResult":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_53

    .line 195
    const/4 v6, 0x0

    .line 197
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultTest(JILjava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v8

    .line 198
    aget-short v0, p4, v8

    if-ltz v0, :cond_30

    .line 200
    const/4 v6, 0x1

    .line 208
    :cond_30
    :goto_30
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: processVerify, pipeRecogTest, nRecogResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 205
    :cond_53
    const/4 v6, 0x0

    goto :goto_30
.end method

.method public native resetRecog(J)V
.end method

.method public native seamlessAdapt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSessionValue(JJ)V
    .registers 8
    .param p1, "lSessionValue"    # J
    .param p3, "lSessionValueFPSV"    # J

    .prologue
    .line 114
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 117
    iput-wide p3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 118
    return-void
.end method
