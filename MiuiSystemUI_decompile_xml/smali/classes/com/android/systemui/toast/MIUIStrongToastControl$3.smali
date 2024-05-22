.class public final Lcom/android/systemui/toast/MIUIStrongToastControl$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$3;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$3;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 4
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object p2

    .line 15
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 16
    const/4 v0, 0x1

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 31
    if-eqz p0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 35
    :cond_2
    return-void
    .line 38
.end method
