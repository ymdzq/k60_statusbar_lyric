.class public final synthetic Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
