.class public final synthetic Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 9
    return-void
    .line 12
.end method
