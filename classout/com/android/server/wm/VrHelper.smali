.class public Lcom/android/server/wm/VrHelper;
.super Ljava/lang/Object;
.source "VrHelper.java"


# static fields
.field private static mInstance:Lcom/android/server/wm/VrHelper;


# instance fields
.field mSkipVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    .line 32
    return-void
.end method

.method private fillVRSkipList()V
    .registers 10

    .prologue
    .line 44
    iget-object v7, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_4c

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "fs":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 47
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v3, "/data/data/com.gvrf.vrlauncher/files/vrskiplist.txt"

    .line 49
    .local v3, "filePathString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    .local v6, "str":Ljava/lang/String;
    :try_start_d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_24

    .line 52
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .local v5, "fs":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 54
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_24
    if-eqz v4, :cond_4e

    .line 55
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_30} :catch_78
    .catchall {:try_start_d .. :try_end_30} :catchall_5b

    .line 56
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    if-eqz v1, :cond_4d

    .line 57
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4d

    .line 58
    iget-object v7, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catchall {:try_start_32 .. :try_end_3d} :catchall_75

    goto :goto_32

    .line 62
    :catch_3e
    move-exception v7

    move-object v0, v1

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_40
    if-eqz v0, :cond_45

    :try_start_42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_6d

    .line 65
    :cond_45
    :goto_45
    const/4 v0, 0x0

    .line 66
    if-eqz v4, :cond_4b

    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_6f

    .line 67
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    .line 70
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "filePathString":Ljava/lang/String;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .end local v6    # "str":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void

    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filePathString":Ljava/lang/String;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_4d
    move-object v0, v1

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_4e
    if-eqz v0, :cond_53

    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_69

    .line 65
    :cond_53
    :goto_53
    const/4 v0, 0x0

    .line 66
    if-eqz v4, :cond_59

    :try_start_56
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6b

    .line 67
    :cond_59
    :goto_59
    const/4 v4, 0x0

    .line 68
    goto :goto_4c

    .line 64
    .end local v2    # "f":Ljava/io/File;
    :catchall_5b
    move-exception v7

    :goto_5c
    if-eqz v0, :cond_61

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_71

    .line 65
    :cond_61
    :goto_61
    const/4 v0, 0x0

    .line 66
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_73

    .line 67
    :cond_67
    :goto_67
    const/4 v4, 0x0

    throw v7

    .line 64
    .restart local v2    # "f":Ljava/io/File;
    :catch_69
    move-exception v7

    goto :goto_53

    .line 66
    :catch_6b
    move-exception v7

    goto :goto_59

    .line 64
    .end local v2    # "f":Ljava/io/File;
    :catch_6d
    move-exception v7

    goto :goto_45

    .line 66
    :catch_6f
    move-exception v7

    goto :goto_4b

    .line 64
    :catch_71
    move-exception v8

    goto :goto_61

    .line 66
    :catch_73
    move-exception v8

    goto :goto_67

    .line 64
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    :catchall_75
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5c

    .line 62
    .end local v2    # "f":Ljava/io/File;
    :catch_78
    move-exception v7

    goto :goto_40
.end method

.method public static getInstance()Lcom/android/server/wm/VrHelper;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/android/server/wm/VrHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VrHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    .line 40
    :cond_b
    sget-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    return-object v0
.end method


# virtual methods
.method public isVRFlingerMode()Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "fs":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 83
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v3, "/data/data/com.gvrf.vrlauncher/files/flinger_status.txt"

    .line 86
    .local v3, "filePathString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "str":Ljava/lang/String;
    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 89
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .local v5, "fs":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 91
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_1d
    if-eqz v4, :cond_55

    .line 92
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_62
    .catchall {:try_start_6 .. :try_end_29} :catchall_70

    .line 93
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    if-eqz v1, :cond_54

    .line 94
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 95
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_95
    .catchall {:try_start_2b .. :try_end_36} :catchall_92

    move-result v8

    if-eqz v8, :cond_47

    .line 96
    const/4 v7, 0x1

    .line 105
    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_7e

    .line 106
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    .line 107
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_45

    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_80

    .line 108
    :cond_45
    :goto_45
    const/4 v4, 0x0

    .line 110
    .end local v2    # "f":Ljava/io/File;
    :goto_46
    return v7

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    :cond_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_82

    .line 106
    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    .line 107
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_52

    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_84

    .line 108
    :cond_52
    :goto_52
    const/4 v4, 0x0

    goto :goto_46

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_54
    move-object v0, v1

    .line 105
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_55
    if-eqz v0, :cond_5a

    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_86

    .line 106
    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    .line 107
    if-eqz v4, :cond_60

    :try_start_5d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_88

    .line 108
    :cond_60
    :goto_60
    const/4 v4, 0x0

    .line 109
    goto :goto_46

    .line 103
    .end local v2    # "f":Ljava/io/File;
    :catch_62
    move-exception v8

    .line 105
    :goto_63
    if-eqz v0, :cond_68

    :try_start_65
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_8a

    .line 106
    :cond_68
    :goto_68
    const/4 v0, 0x0

    .line 107
    if-eqz v4, :cond_6e

    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_8c

    .line 108
    :cond_6e
    :goto_6e
    const/4 v4, 0x0

    .line 109
    goto :goto_46

    .line 105
    :catchall_70
    move-exception v7

    :goto_71
    if-eqz v0, :cond_76

    :try_start_73
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_8e

    .line 106
    :cond_76
    :goto_76
    const/4 v0, 0x0

    .line 107
    if-eqz v4, :cond_7c

    :try_start_79
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_90

    .line 108
    :cond_7c
    :goto_7c
    const/4 v4, 0x0

    throw v7

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    :catch_7e
    move-exception v8

    goto :goto_3f

    .line 107
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_80
    move-exception v8

    goto :goto_45

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_82
    move-exception v8

    goto :goto_4c

    .line 107
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_84
    move-exception v8

    goto :goto_52

    .line 105
    :catch_86
    move-exception v8

    goto :goto_5a

    .line 107
    :catch_88
    move-exception v8

    goto :goto_60

    .line 105
    .end local v2    # "f":Ljava/io/File;
    :catch_8a
    move-exception v8

    goto :goto_68

    .line 107
    :catch_8c
    move-exception v8

    goto :goto_6e

    .line 105
    :catch_8e
    move-exception v8

    goto :goto_76

    .line 107
    :catch_90
    move-exception v8

    goto :goto_7c

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    :catchall_92
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_71

    .line 103
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_95
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_63
.end method

.method public skipPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/wm/VrHelper;->fillVRSkipList()V

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
