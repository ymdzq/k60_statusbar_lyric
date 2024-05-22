.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    .line 9
    if-nez v0, :cond_1

    .line 11
    const-string p0, "GlobalActionsDialogLite"

    .line 13
    const-string p1, "Service changed before actions created"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 21
    move-result p1

    .line 24
    const/4 v0, 0x3

    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 31
    if-eqz p1, :cond_3

    .line 33
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 35
    goto :goto_1

    .line 37
    :cond_3
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 38
    :goto_1
    iput-object p1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 40
    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    .line 42
    iput-object p1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 44
    iget-object p1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 46
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 51
    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    .line 53
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    .line 60
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
    .line 65
.end method
