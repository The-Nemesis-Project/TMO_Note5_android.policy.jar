.class public Lcom/samsung/voiceshell/WakeUpBackground;
.super Ljava/lang/Object;
.source "WakeUpBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpBackground"

.field private static mIsRunning:Z

.field private static mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

.field private static strFeature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string v0, "/data/data/com.vlingo.midas/Adapted.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetFeature(Ljava/lang/String;)Z
    .registers 5
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "bResult":Z
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    .line 57
    sput-object p1, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    .line 65
    :goto_9
    return v0

    .line 62
    :cond_a
    const-string v1, "WakeUpBackground"

    const-string v2, "SetFeature: don\'t set feature while running"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public SetObject(Lcom/samsung/voiceshell/BackgroundProcess;)V
    .registers 2
    .param p1, "bgProcess"    # Lcom/samsung/voiceshell/BackgroundProcess;

    .prologue
    .line 47
    sput-object p1, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    .line 48
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 17
    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_d

    sget-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    if-ne v0, v2, :cond_15

    .line 19
    :cond_d
    const-string v0, "WakeUpBackground"

    const-string v1, "Don\'t do BackgroundProcess while running or in case adapted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_14
    return-void

    .line 24
    :cond_15
    const-string v0, "WakeUpBackground"

    const-string v1, "Do BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sput-boolean v2, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    .line 29
    const-string v0, "WakeUpBackground"

    const-string v1, "Start BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    invoke-interface {v0}, Lcom/samsung/voiceshell/BackgroundProcess;->OnBgProcess()Z

    move-result v0

    if-ne v0, v2, :cond_44

    .line 32
    const-string v0, "WakeUpBackground"

    const-string v1, "BackgroundProcess was success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->CreateFile(Ljava/lang/String;)Z

    .line 39
    :goto_39
    const-string v0, "WakeUpBackground"

    const-string v1, "End BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    goto :goto_14

    .line 37
    :cond_44
    const-string v0, "WakeUpBackground"

    const-string v1, "BackgroundProcess was failed. don\'t create feature"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method
