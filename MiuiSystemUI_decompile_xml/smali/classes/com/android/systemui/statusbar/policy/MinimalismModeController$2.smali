.class public final Lcom/android/systemui/statusbar/policy/MinimalismModeController$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MinimalismModeController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$2;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$2;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "pc_security_center_extreme_mode_enter"

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mMinimalismMode:I

    .line 17
    if-eq v0, p1, :cond_0

    .line 19
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mMinimalismMode:I

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->fireMinimalismModeChanged()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method
