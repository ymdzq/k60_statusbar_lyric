.class public final Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 8
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->uiHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1$onChange$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1$onChange$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V

    .line 14
    invoke-static {p1, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 17
    return-void

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 21
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->uiHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$autoBrightnessObserver$1$onChange$1;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$autoBrightnessObserver$1$onChange$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V

    .line 27
    invoke-static {p1, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 30
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method
