.class public final Lcom/android/keyguard/KeyguardEditorHelper$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$5;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMaxBoundsChanged()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "onMaxBoundsChanged"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$5;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->updateConfigurations()V

    .line 15
    return-void
    .line 18
.end method
