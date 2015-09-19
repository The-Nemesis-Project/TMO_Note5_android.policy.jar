.class public Lcom/samsung/voiceshell/WakeUpUtils;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpUtils"

.field private static final VERSION:Ljava/lang/String; = "2.2.20"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateFile(Ljava/lang/String;)Z
    .registers 6
    .param p0, "strFile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 91
    .local v1, "nLen":I
    add-int/lit8 v0, v1, -0x1

    .line 92
    .local v0, "i":I
    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_14

    if-ltz v0, :cond_14

    .line 94
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 97
    :cond_14
    if-nez v0, :cond_1e

    .line 99
    const-string v3, "WakeUpUtils"

    const-string v4, "There is no \'/\'"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1d
    return v2

    :cond_1e
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/voiceshell/WakeUpUtils;->CreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1d
.end method

.method public static CreateFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "strFilePath"    # Ljava/lang/String;
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "bResult":Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v4, "fileInfo":Ljava/io/File;
    const/4 v2, 0x0

    .line 116
    .local v2, "fStream":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_15

    .end local v2    # "fStream":Ljava/io/FileOutputStream;
    .local v3, "fStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 123
    .end local v3    # "fStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fStream":Ljava/io/FileOutputStream;
    :goto_e
    if-eqz v2, :cond_14

    .line 127
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1a

    .line 128
    const/4 v0, 0x1

    .line 136
    :cond_14
    :goto_14
    return v0

    .line 118
    :catch_15
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_e

    .line 130
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1a
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public static GetVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    const-string v0, "2.2.20"

    return-object v0
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .registers 5
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "fileHandle":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 29
    const-string v1, "WakeUpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFileExist: There is no ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    .line 33
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method public static ReadString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "mFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 43
    const-string v6, "WakeUpUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadString: There is no ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2a
    :goto_2a
    return-object v5

    .line 47
    :cond_2b
    const/4 v3, 0x0

    .line 50
    .local v3, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_2c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_50
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_60
    .catchall {:try_start_2c .. :try_end_31} :catchall_70

    .line 51
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 53
    .local v0, "data":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3d} :catch_83
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3d} :catch_80
    .catchall {:try_start_31 .. :try_end_3d} :catchall_7d

    .line 55
    const/4 v3, 0x0

    .line 57
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_3e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_50
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_60
    .catchall {:try_start_3e .. :try_end_43} :catchall_70

    .line 69
    if-eqz v3, :cond_49

    .line 73
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 74
    const/4 v3, 0x0

    :cond_49
    :goto_49
    move-object v5, v6

    .line 79
    goto :goto_2a

    .line 76
    :catch_4b
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 59
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_70

    .line 69
    if-eqz v3, :cond_2a

    .line 73
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    .line 74
    const/4 v3, 0x0

    goto :goto_2a

    .line 76
    :catch_5b
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    :catch_60
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_70

    .line 69
    if-eqz v3, :cond_2a

    .line 73
    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6b

    .line 74
    const/4 v3, 0x0

    goto :goto_2a

    .line 76
    :catch_6b
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_70
    move-exception v5

    :goto_71
    if-eqz v3, :cond_77

    .line 73
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_78

    .line 74
    const/4 v3, 0x0

    .line 79
    :cond_77
    :goto_77
    throw v5

    .line 76
    :catch_78
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catchall_7d
    move-exception v5

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_71

    .line 63
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_80
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_61

    .line 59
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_83
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_51
.end method
