.class public final Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 2
    iget p1, p1, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mPhoneCount:I

    .line 4
    new-array v0, p1, [Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, p1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 11
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v2

    .line 18
    const-string/jumbo v3, "status_bar_custom_carrier"

    .line 19
    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 26
    iget v4, v4, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCurrentUserId:I

    .line 28
    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    aput-object v2, v0, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 39
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mMainHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;

    .line 43
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;-><init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;[Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
    .line 51
.end method
