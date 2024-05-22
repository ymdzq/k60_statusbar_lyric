.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;


# direct methods
.method public synthetic constructor <init>(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

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
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->goToFullscreenFromSplit()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onInit()V

    .line 16
    return-void

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onInit()V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onFinishedWakingUp()V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
