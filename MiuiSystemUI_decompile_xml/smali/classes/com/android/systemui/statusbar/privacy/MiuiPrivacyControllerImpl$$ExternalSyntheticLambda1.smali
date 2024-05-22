.class public final synthetic Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;->f$0:Z

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 4
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 10
    const-string v1, "location"

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 16
    return-void
    .line 19
.end method
