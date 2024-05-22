.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 14
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 22
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 24
    const/4 v1, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 29
    if-nez v0, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;

    .line 34
    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 36
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 38
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 42
    const-string v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 44
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v2, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->packageName:Ljava/lang/String;

    .line 49
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->userId:I

    .line 56
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 58
    move-result-object p1

    .line 61
    const-string v2, "android.intent.extra.USER"

    .line 62
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;

    .line 67
    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 69
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 71
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
    .line 79
.end method
