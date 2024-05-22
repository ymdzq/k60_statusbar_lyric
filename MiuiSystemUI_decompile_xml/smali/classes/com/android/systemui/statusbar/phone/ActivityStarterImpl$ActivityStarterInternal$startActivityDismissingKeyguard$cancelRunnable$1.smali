.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;->$callback:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;->$callback:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/16 v0, -0x60

    .line 14
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 16
    :cond_0
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$cancelRunnable$1;->$callback:Ljava/lang/Object;

    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->shadeControllerLazy:Ldagger/Lazy;

    .line 24
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    .line 30
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->runPostCollapseRunnables()V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
