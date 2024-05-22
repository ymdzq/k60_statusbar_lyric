.class public final Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneHandedAccessibilityUtil"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDescription:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mStartOneHandedDescription:Ljava/lang/String;

.field private final mStopOneHandedDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mPackageName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 20
    const v1, 0x7f130041    # @string/accessibility_action_start_one_handed 'Start one-handed mode'

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStartOneHandedDescription:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 33
    const v0, 0x7f130042    # @string/accessibility_action_stop_one_handed 'Exit one-handed mode'

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStopOneHandedDescription:Ljava/lang/String;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public announcementForScreenReader(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mDescription:Ljava/lang/String;

    .line 11
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 13
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mPackageName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 19
    const/16 v0, 0x4000

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 24
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mDescription:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 38
    return-void
    .line 41
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "OneHandedAccessibilityUtil"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  mPackageName="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mPackageName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const-string v0, "  mDescription="

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mDescription:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    return-void
    .line 27
.end method

.method public getOneHandedStartDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStartOneHandedDescription:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOneHandedStopDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStopOneHandedDescription:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
