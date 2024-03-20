.class public final synthetic Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p1, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p3, :cond_1

    .line 9
    if-eqz p2, :cond_0

    .line 11
    const/4 v1, 0x6

    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    const/4 v1, 0x5

    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    :cond_0
    move p2, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move p2, v0

    .line 21
    :goto_0
    if-eqz p3, :cond_2

    .line 22
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    move-result v1

    .line 27
    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    move-result p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    move p3, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move p3, v0

    .line 42
    :goto_1
    if-nez p2, :cond_4

    .line 43
    if-eqz p3, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move p1, v0

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    .line 50
    :goto_3
    return p1
    .line 53
.end method
