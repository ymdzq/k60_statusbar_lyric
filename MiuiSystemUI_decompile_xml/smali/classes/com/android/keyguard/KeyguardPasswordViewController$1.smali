.class public final Lcom/android/keyguard/KeyguardPasswordViewController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 6
    return-void
    .line 9
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
