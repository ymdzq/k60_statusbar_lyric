.class public final synthetic Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    sget v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, p0, Landroid/widget/TextView;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [I

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    const/4 p0, 0x1

    .line 21
    aget p0, v1, p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    iget v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    .line 26
    sub-int/2addr v1, p0

    .line 28
    iput v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    .line 29
    :cond_0
    return-void
    .line 31
.end method
