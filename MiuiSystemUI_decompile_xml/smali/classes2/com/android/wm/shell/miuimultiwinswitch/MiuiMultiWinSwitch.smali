.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final INSTANCE:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

.field private static final MIUI_OPTIMIZATION_SETTING_KEY:Ljava/lang/String; = "miui_optimization"

.field private static final PROPERTY_CTS:Ljava/lang/String; = "ro.miui.cts"

.field private static final PROPERTY_MIUI_OPTIMIZATION:Ljava/lang/String;

.field private static final SUPPORT_MULTI_WINDOW:Z

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinSwitch"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;

.field private mMiuiOptimizationEnabled:Z

.field private mMiuiOptimizationObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mListeners:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mgetMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getMiuiOptimizationEnabled()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "sys"

    .line 2
    const-string v1, "miui_optimization"

    .line 5
    const-string v2, "persist"

    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "."

    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->PROPERTY_MIUI_OPTIMIZATION:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->supportMultiWindow()Z

    .line 21
    move-result v0

    .line 24
    sput-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->SUPPORT_MULTI_WINDOW:Z

    .line 25
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 27
    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;-><init>()V

    .line 29
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->INSTANCE:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 32
    return-void
    .line 34
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mListeners:Ljava/util/List;

    .line 10
    return-void
    .line 12
.end method

.method public static getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->INSTANCE:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 2
    return-object v0
    .line 4
.end method

.method private getMiuiOptimizationEnabled()Z
    .locals 6

    .line 1
    const-string p0, "ro.miui.cts"

    .line 2
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "1"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->PROPERTY_MIUI_OPTIMIZATION:Ljava/lang/String;

    .line 14
    xor-int/lit8 v1, p0, 0x1

    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 21
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->TAG:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "getMiuiOptimizationEnabled: Build.IS_MIUI="

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    sget-boolean v3, Landroid/os/Build;->IS_MIUI:Z

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, ", SUPPORT_MULTI_WINDOW="

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-boolean v3, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->SUPPORT_MULTI_WINDOW:Z

    .line 41
    const-string v4, ", isCts="

    .line 43
    const-string v5, ", miuiOptimization="

    .line 45
    invoke-static {v2, v3, v4, p0, v5}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-boolean p0, Landroid/os/Build;->IS_MIUI:Z

    .line 60
    if-eqz p0, :cond_0

    .line 62
    if-eqz v3, :cond_0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    const/4 p0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p0, 0x0

    .line 70
    :goto_0
    return p0
    .line 71
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mContext:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;Landroid/os/Handler;)V

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p1

    .line 16
    const-string p2, "miui_optimization"

    .line 17
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    .line 23
    const/4 v1, -0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 27
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getMiuiOptimizationEnabled()Z

    .line 30
    move-result p1

    .line 33
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationEnabled:Z

    .line 34
    return-void
    .line 36
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mMiuiOptimizationEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public removeListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
