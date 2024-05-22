.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->$r8$lambda$e7JofukEvFeyo59vxP5_b0cMwWo(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 16
    return-void

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onShortcutEnabledChanged()V

    .line 22
    return-void

    .line 25
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onSwipeToNotificationEnabledChanged()V

    .line 28
    return-void

    .line 31
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onEnabledSettingChanged()V

    .line 34
    return-void

    .line 37
    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onActivatedActionChanged()V

    .line 40
    return-void

    .line 43
    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 44
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->$r8$lambda$ho3agzFjLZk-NVYTRKJpyBkxh_0(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 46
    return-void

    .line 49
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 50
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->$r8$lambda$cbMJ9PC1JC6GUy38SlUFhGyvLtI(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method
