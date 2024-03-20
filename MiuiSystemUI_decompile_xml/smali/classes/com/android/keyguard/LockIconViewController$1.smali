.class public final Lcom/android/keyguard/LockIconViewController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 12
    const v2, 0x7f130045    # @string/accessibility_authenticate_hint 'authenticate'

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    const/16 v2, 0x10

    .line 20
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 25
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p1

    .line 32
    const v1, 0x7f130078    # @string/accessibility_enter_hint 'enter device'

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-direct {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 40
    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 5
    iget-boolean v0, p1, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p1, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-boolean v0, p1, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 17
    if-eqz v0, :cond_2

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 21
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 22
    iget-boolean v0, p1, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    .line 24
    if-eqz v0, :cond_3

    .line 26
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 30
    goto :goto_1

    .line 33
    :cond_3
    iget-boolean p1, p1, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 34
    if-eqz p1, :cond_4

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 38
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 40
    :cond_4
    :goto_1
    return-void
    .line 43
.end method
