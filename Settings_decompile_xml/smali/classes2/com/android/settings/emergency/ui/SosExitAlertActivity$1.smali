.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;
.super Ljava/lang/Object;
.source "SosExitAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 91
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    const-class v2, Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SOS-ExitAlertActivity"

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "from"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 97
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 98
    invoke-virtual {p1, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 99
    invoke-virtual {p1, v4, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 100
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "to"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide v5, 0x3fee666660000000L    # 0.949999988079071

    .line 101
    invoke-virtual {v1, v0, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 103
    invoke-virtual {v0, v4, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 104
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;

    iget-object v3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener-IA;)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 106
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->-$$Nest$fgetmView(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Landroid/view/View;

    move-result-object p0

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method
