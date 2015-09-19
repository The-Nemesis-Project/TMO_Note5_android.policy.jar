.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static bCurrentAppOrientation:Z

.field private static msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I

.field private static sWindowOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mEnabled_sensor:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasSmartRotation:Z

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbResultFaceDectection:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 70
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 73
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 74
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sWindowOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 97
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->bCurrentAppOrientation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 98
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHasSmartRotation:Z

    .line 147
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    .local v0, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    .line 151
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mbSContext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 153
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 154
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled_sensor:Z

    .line 156
    const-string v1, "com.sec.android.smartface.smart_rotation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHasSmartRotation:Z

    .line 157
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasSmartRotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHasSmartRotation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_93

    .line 161
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 163
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHasSmartRotation:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->setSmartRotation(Z)V

    .line 165
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_92
    return-void

    .line 169
    :cond_93
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 172
    iput v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 174
    if-ne p3, v6, :cond_ac

    .line 175
    iput v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 176
    :cond_ac
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 183
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v5, :cond_bd

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10016

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 187
    :cond_bd
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_c5

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v1, :cond_cf

    .line 189
    :cond_c5
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 190
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 193
    :cond_cf
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_e5

    .line 195
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v5, :cond_ef

    .line 196
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHasSmartRotation:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->setSmartRotation(Z)V

    .line 205
    :cond_e5
    :goto_e5
    sput-object p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sWindowOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 206
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 201
    :cond_ef
    const-string v1, "WindowOrientationListener"

    const-string v2, "++++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_e5
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 68
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$700()Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 68
    sput-object p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .registers 1

    .prologue
    .line 437
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;

    .prologue
    .line 446
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 447
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "feature"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_38
    return-void
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 4
    .param p0, "appOrientation"    # I

    .prologue
    .line 392
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 393
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentAppOrientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 363
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_a

    .line 365
    monitor-exit v1

    .line 367
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_13

    :goto_e
    monitor-exit v1

    goto :goto_9

    .line 369
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 367
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public disable()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_17

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->resetRotation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->access$200(Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;)V

    .line 288
    :cond_15
    :goto_15
    monitor-exit v1

    .line 289
    :goto_16
    return-void

    .line 273
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_27

    .line 274
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v1

    goto :goto_16

    .line 288
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0

    .line 277
    :cond_27
    :try_start_27
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v3, :cond_15

    .line 278
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_3a
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v0, v3, :cond_46

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    .line 284
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_15

    .line 279
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_24

    goto :goto_3a
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    if-eqz v0, :cond_a5

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 688
    :cond_a5
    monitor-exit v1

    .line 689
    return-void

    .line 688
    :catchall_a7
    move-exception v0

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_a7

    throw v0
.end method

.method public enable()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_13

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 259
    :cond_11
    :goto_11
    monitor-exit v1

    .line 260
    :goto_12
    return-void

    .line 233
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_26

    .line 235
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v1

    goto :goto_12

    .line 259
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0

    .line 238
    :cond_26
    :try_start_26
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_11

    .line 239
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_35

    .line 240
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v3, :cond_5e

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 247
    :goto_3e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled_sensor:Z

    if-ne v0, v3, :cond_5a

    .line 248
    const-string v0, "WindowOrientationListener"

    const-string v2, "sensor enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_51
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 252
    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_11

    .line 245
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_3e

    .line 249
    :cond_64
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_23

    goto :goto_51
.end method

.method public getProposedRotation()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_10

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    monitor-exit v1

    .line 344
    :goto_f
    return v0

    .line 331
    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v2, :cond_4c

    .line 332
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 334
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit v1

    goto :goto_f

    .line 347
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v0

    .line 338
    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_44

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_f

    .line 341
    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_f

    .line 344
    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_35

    goto :goto_f
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_3
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 313
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 314
    sput p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 315
    return-void

    .line 313
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setFaceDetectionResult(Z)V
    .registers 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 357
    return-void
.end method

.method public setSensorDelay(I)V
    .registers 7
    .param p1, "delay"    # I

    .prologue
    const/4 v1, 0x1

    .line 296
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled_sensor:Z

    if-ne v0, v1, :cond_29

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_15
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_20
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 303
    :cond_29
    return-void

    .line 298
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_15

    .line 300
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_20
.end method
