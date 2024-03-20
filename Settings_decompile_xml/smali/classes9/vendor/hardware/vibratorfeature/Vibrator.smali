.class public Lvendor/hardware/vibratorfeature/Vibrator;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/vibrator/IVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/hardware/vibratorfeature/Vibrator;->mContext:Landroid/content/Context;

    const-string p1, "android.hardware.vibrator.IVibrator/default"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/vibrator/IVibrator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;

    move-result-object p1

    iput-object p1, p0, Lvendor/hardware/vibratorfeature/Vibrator;->mService:Landroid/hardware/vibrator/IVibrator;

    return-void
.end method


# virtual methods
.method public setAmplitude(F)V
    .locals 1

    .line 0
    iget-object p0, p0, Lvendor/hardware/vibratorfeature/Vibrator;->mService:Landroid/hardware/vibrator/IVibrator;

    const-string v0, "VibratorFeature"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/vibrator/IVibrator;->setAmplitude(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "fail to setAmplitude"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "mService is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
