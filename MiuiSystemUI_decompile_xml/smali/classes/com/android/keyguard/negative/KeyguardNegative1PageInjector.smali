.class public final Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/systemui/controller/RegionController$Callback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

.field public mLeftTransferBgView:Landroid/widget/ImageView;

.field public final mMiuiUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;

.field public mUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;)V

    .line 9
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;

    .line 12
    new-instance p1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;)V

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mMiuiUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final onRegionChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->initLeftView()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
