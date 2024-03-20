.class public Lcom/android/systemui/statusbar/policy/RemoteInputView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final VIEW_TAG:Ljava/lang/Object;


# instance fields
.field public mColorized:Z

.field public mContentBackground:Landroid/graphics/drawable/GradientDrawable;

.field public mContentBackgroundBounds:Landroid/graphics/Rect;

.field public mContentView:Landroid/widget/LinearLayout;

.field public mController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public mDelete:Landroid/widget/ImageView;

.field public mDeleteBg:Landroid/widget/ImageView;

.field public mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

.field public final mEditTextFocusChangeListeners:Ljava/util/ArrayList;

.field public final mEditorActionHandler:Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mIsAnimatingAppearance:Z

.field public mIsFocusAnimationFlagActive:Z

.field public final mOnSendListeners:Ljava/util/ArrayList;

.field public final mOnVisibilityChangedListeners:Ljava/util/ArrayList;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRemoved:Z

.field public mResetting:Z

.field public mRevealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

.field public mSendButton:Landroid/widget/ImageButton;

.field public mSending:Z

.field public mTestableViewRootImpl:Landroid/view/ViewRootImpl;

.field public final mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

.field public mTint:I

.field public final mToken:Ljava/lang/Object;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListeners:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    .line 31
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsAnimatingAppearance:Z

    .line 34
    new-instance p2, Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    .line 36
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    .line 41
    new-instance p2, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;

    .line 43
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 45
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditorActionHandler:Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;

    .line 48
    const-class p2, Lcom/android/internal/logging/UiEventLogger;

    .line 50
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/internal/logging/UiEventLogger;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 64
    move-result-object p2

    .line 67
    const v0, 0x1010435    # @android:attr/colorAccent

    .line 68
    const v1, 0x112002f    # @android:^attr-private/colorSurface

    .line 71
    filled-new-array {v0, v1}, [I

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 78
    move-result-object p2

    .line 81
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 82
    move-result p1

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTint:I

    .line 86
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
    .line 91
.end method


# virtual methods
.method public final dispatchFinishTemporaryDetach()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 21
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchFinishTemporaryDetach()V

    .line 24
    return-void
    .line 27
.end method

.method public final dispatchStartTemporaryDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchStartTemporaryDetach()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 7
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->detachViewFromParent(I)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final focus()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_OPEN:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 10
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 14
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 18
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 20
    move-result-object v3

    .line 23
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 24
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 31
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 53
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 57
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 64
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    .line 66
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 73
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v1, v3, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 94
    move-result v4

    .line 97
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 98
    move-result v3

    .line 101
    iget-object v5, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

    .line 102
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 104
    invoke-virtual {v5, v6, v4, v3}, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logAddRemoteInput(Ljava/lang/String;ZZ)V

    .line 106
    if-nez v3, :cond_1

    .line 109
    iget-object v3, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 111
    new-instance v5, Landroid/util/Pair;

    .line 113
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 115
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 117
    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    if-nez v4, :cond_2

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 131
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setAttachment(Landroid/view/ContentInfo;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 138
    return-void
    .line 141
.end method

.method public getActionsContainerLayout()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const v0, 0x10201cf    # @android:id/activity_chooser_view_content

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public getController()Lcom/android/systemui/statusbar/policy/RemoteInputViewController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTestableViewRootImpl:Landroid/view/ViewRootImpl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setEditTextReferenceToSelf()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditorActionHandler:Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 36
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 44
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 46
    :cond_0
    return-void
    .line 49
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onDefocus(ZZLjava/lang/Runnable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    .line 21
    if-nez v0, :cond_8

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz p1, :cond_5

    .line 33
    if-eqz v0, :cond_5

    .line 35
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsFocusAnimationFlagActive:Z

    .line 37
    if-eqz v3, :cond_5

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getActionsContainerLayout()Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v3, v2

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 59
    move-result v4

    .line 62
    sub-int/2addr v3, v4

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v4

    .line 67
    instance-of v4, v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    if-nez v4, :cond_1

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 79
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :goto_1
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 86
    :cond_2
    new-instance v3, Landroidx/core/animation/AnimatorSet;

    .line 89
    invoke-direct {v3}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 91
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 94
    const/4 v5, 0x2

    .line 96
    new-array v6, v5, [F

    .line 97
    fill-array-data v6, :array_0

    .line 99
    invoke-static {p0, v4, v6}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    .line 102
    move-result-object v4

    .line 105
    const-wide/16 v6, 0x53

    .line 106
    invoke-virtual {v4, v6, v7}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)Landroidx/core/animation/Animator;

    .line 108
    const-wide/16 v8, 0x78

    .line 111
    invoke-virtual {v4, v8, v9}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 113
    sget-object v8, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    .line 116
    invoke-virtual {v4, v8}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 118
    new-array v9, v5, [F

    .line 121
    fill-array-data v9, :array_1

    .line 123
    invoke-static {v9}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 126
    move-result-object v9

    .line 129
    new-instance v10, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;

    .line 130
    invoke-direct {v10, p0, v9, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroidx/core/animation/ValueAnimator;I)V

    .line 132
    invoke-virtual {v9, v10}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 135
    const-wide/16 v10, 0x168

    .line 138
    invoke-virtual {v9, v10, v11}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 140
    sget-object v10, Lcom/android/app/animation/InterpolatorsAndroidX;->FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 143
    invoke-virtual {v9, v10}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 145
    new-instance v10, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;

    .line 148
    const/4 v11, 0x1

    .line 150
    invoke-direct {v10, p0, v11}, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;I)V

    .line 151
    invoke-virtual {v9, v10}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 154
    if-nez v0, :cond_3

    .line 157
    filled-new-array {v4, v9}, [Landroidx/core/animation/Animator;

    .line 159
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    .line 163
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 167
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 170
    new-array v5, v5, [F

    .line 172
    fill-array-data v5, :array_2

    .line 174
    invoke-static {v0, v2, v5}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    .line 177
    move-result-object v2

    .line 180
    invoke-virtual {v2, v6, v7}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)Landroidx/core/animation/Animator;

    .line 181
    invoke-virtual {v2, v8}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 184
    const-wide/16 v5, 0xb4

    .line 187
    invoke-virtual {v2, v5, v6}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 189
    filled-new-array {v4, v9, v2}, [Landroidx/core/animation/Animator;

    .line 192
    move-result-object v2

    .line 195
    invoke-virtual {v3, v2}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    .line 196
    :goto_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;

    .line 199
    invoke-direct {v2, p0, p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v3, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 204
    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    :cond_4
    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet;->start()V

    .line 212
    goto :goto_3

    .line 215
    :cond_5
    if-eqz p1, :cond_6

    .line 216
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

    .line 218
    if-eqz p1, :cond_6

    .line 220
    iget v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->radius:I

    .line 222
    if-lez v0, :cond_6

    .line 224
    int-to-float p3, v0

    .line 226
    iget v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->centerX:I

    .line 227
    iget p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->centerY:I

    .line 229
    invoke-static {p0, v0, p1, p3, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 231
    move-result-object p1

    .line 234
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 235
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    const-wide/16 v0, 0x96

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 242
    new-instance p3, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;

    .line 245
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 247
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 253
    goto :goto_3

    .line 256
    :cond_6
    const/16 p1, 0x8

    .line 257
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    if-eqz p3, :cond_7

    .line 262
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 264
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 267
    if-eqz p1, :cond_8

    .line 269
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 271
    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 274
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 276
    sget-object p2, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_CLOSE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    .line 278
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 280
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 282
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 284
    move-result p3

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 288
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 294
    move-result-object p0

    .line 297
    invoke-interface {p1, p2, p3, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 298
    :cond_9
    return-void

    .line 301
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 302
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 310
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 318
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 26
    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isTemporarilyDetached()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 48
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :cond_1
    :goto_0
    return-void
    .line 57
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0792    # @id/remote_input_progress

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 14
    const v0, 0x7f0a0793    # @id/remote_input_send

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageButton;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f08177e    # @drawable/remote_input_view_text_bg 'res/drawable/remote_input_view_text_bg.xml'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 45
    const v0, 0x7f0a0790    # @id/remote_input_delete

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDelete:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0a0791    # @id/remote_input_delete_bg

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDeleteBg:Landroid/widget/ImageView;

    .line 67
    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDelete:Landroid/widget/ImageView;

    .line 74
    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDelete:Landroid/widget/ImageView;

    .line 81
    new-instance v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;

    .line 83
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0a078e    # @id/remote_input_content

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentView:Landroid/widget/LinearLayout;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const v0, 0x7f0a0794    # @id/remote_input_text

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 116
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 133
    new-instance v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;

    .line 135
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 140
    return-void
    .line 143
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsFocusAnimationFlagActive:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 9
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackgroundBounds:Landroid/graphics/Rect;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 21
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final onNotificationUpdateOrReset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsFocusAnimationFlagActive:Z

    .line 17
    const/4 v3, 0x4

    .line 19
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 24
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSending:Z

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 33
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 35
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 44
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(ZZLjava/lang/Runnable;)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSending:Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 55
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 57
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 59
    move-result-object v4

    .line 62
    invoke-static {v4}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 63
    move-result-object v4

    .line 66
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 69
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAggregatedVisible()Z

    .line 80
    move-result v4

    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 97
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 99
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 103
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 108
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(ZZLjava/lang/Runnable;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setAttachment(Landroid/view/ContentInfo;)V

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 118
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 120
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 126
    if-eqz p0, :cond_3

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 130
    :cond_3
    return-void
    .line 133
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$$ExternalSyntheticLambda1;

    .line 17
    const v2, 0xf4240

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 26
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    .line 33
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 37
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$$ExternalSyntheticLambda1;

    .line 39
    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 41
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 47
    if-eqz p1, :cond_3

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSending:Z

    .line 51
    if-nez p0, :cond_3

    .line 53
    const/4 p0, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 58
    return-void
    .line 61
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    if-ne p1, p0, :cond_2

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListeners:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/function/Consumer;

    .line 28
    if-nez p2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p2, :cond_2

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive$1()Z

    .line 47
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 53
    sget p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    .line 55
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 57
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 63
    move-result p1

    .line 66
    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 67
    :cond_2
    return-void
    .line 70
.end method

.method public final sendRemoteInput()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Runnable;

    .line 23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 29
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 35
    sget-object v0, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(Ljava/lang/String;)V

    .line 43
    return-void
    .line 46
.end method

.method public setAttachment(Landroid/view/ContentInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    if-eq v0, p1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/ContentInfo;->releasePermissions()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 15
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 28
    move-result-object v2

    .line 31
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 34
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 48
    :cond_1
    const v0, 0x7f0a078f    # @id/remote_input_content_container

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    const v2, 0x7f0a078d    # @id/remote_input_attachment_image

    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/ImageView;

    .line 64
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/16 v3, 0x8

    .line 70
    if-nez p1, :cond_2

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 90
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 93
    move-result-object p1

    .line 96
    if-nez p1, :cond_3

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 106
    sget-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_ATTACH_IMAGE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 110
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 112
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 114
    move-result v1

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 118
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 120
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 124
    move-result-object v2

    .line 127
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 131
    return-void
    .line 134
.end method

.method public setBackgroundTintColor(IZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mColorized:Z

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTint:I

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mColorized:Z

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTint:I

    .line 13
    const/4 v0, 0x0

    .line 15
    if-eqz p2, :cond_1

    .line 16
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 23
    const v2, 0x7f071020    # @dimen/remote_input_view_text_stroke '2.0dp'

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v0

    .line 32
    :goto_0
    if-eqz p2, :cond_4

    .line 33
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    .line 35
    move-result p2

    .line 38
    const/4 v2, -0x1

    .line 39
    const/high16 v3, -0x1000000

    .line 40
    if-eqz p2, :cond_2

    .line 42
    move v4, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v4, v3

    .line 46
    :goto_1
    if-eqz p2, :cond_3

    .line 47
    move v2, v3

    .line 49
    :cond_3
    new-instance p2, Landroid/content/res/ColorStateList;

    .line 50
    const v3, -0x101009e

    .line 52
    filled-new-array {v3}, [I

    .line 55
    move-result-object v5

    .line 58
    new-array v6, v0, [I

    .line 59
    filled-new-array {v5, v6}, [[I

    .line 61
    move-result-object v5

    .line 64
    const/16 v6, 0x4d

    .line 65
    invoke-static {v4, v6}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 67
    move-result v6

    .line 70
    filled-new-array {v6, v4}, [I

    .line 71
    move-result-object v6

    .line 74
    invoke-direct {p2, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 75
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 78
    filled-new-array {v3}, [I

    .line 80
    move-result-object v3

    .line 83
    new-array v0, v0, [I

    .line 84
    filled-new-array {v3, v0}, [[I

    .line 86
    move-result-object v0

    .line 89
    const/16 v3, 0x99

    .line 90
    invoke-static {v4, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 92
    move-result v6

    .line 95
    filled-new-array {v6, v4}, [I

    .line 96
    move-result-object v6

    .line 99
    invoke-direct {v5, v0, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 100
    invoke-static {v4, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 103
    move-result v0

    .line 106
    move v3, v2

    .line 107
    move v2, p1

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 110
    const v2, 0x7f0607fd    # @color/remote_input_send 'res/color/remote_input_send.xml'

    .line 112
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 115
    move-result-object p2

    .line 118
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 119
    const v3, 0x7f0607fe    # @color/remote_input_text 'res/color/remote_input_text.xml'

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 124
    move-result-object v5

    .line 127
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 128
    const v3, 0x7f0607fc    # @color/remote_input_hint 'res/color/remote_input_hint.xml'

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 133
    move-result v2

    .line 136
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 137
    move-result v3

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 145
    move-result-object v4

    .line 148
    const v6, 0x1120031    # @android:^attr-private/colorSurfaceHighlight

    .line 149
    const v7, 0x1120032    # @android:^attr-private/colorSurfaceVariant

    .line 152
    filled-new-array {v6, v7}, [I

    .line 155
    move-result-object v6

    .line 158
    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 159
    move-result-object v4

    .line 162
    :try_start_0
    invoke-virtual {v4, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 163
    move-result v0

    .line 166
    const/4 v6, 0x1

    .line 167
    const v7, -0x777778

    .line 168
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 171
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 175
    move v4, v6

    .line 178
    move v8, v2

    .line 179
    move v2, v0

    .line 180
    move v0, v8

    .line 181
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 182
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 187
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 192
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    .line 194
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 200
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    .line 202
    move-result-object v0

    .line 205
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 206
    move-result v5

    .line 209
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 210
    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 215
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 220
    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDelete:Landroid/widget/ImageView;

    .line 225
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 227
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mDeleteBg:Landroid/widget/ImageView;

    .line 234
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 236
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 243
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 248
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 253
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 258
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 260
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 263
    return-void

    .line 266
    :catchall_0
    move-exception p0

    .line 267
    if-eqz v4, :cond_6

    .line 268
    :try_start_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    goto :goto_3

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 275
    :cond_6
    :goto_3
    throw p0
    .line 278
.end method

.method public setController(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 2
    return-void
    .line 4
.end method

.method public setEditTextContent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    return-void
    .line 7
.end method

.method public setEditTextReferenceToSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 4
    return-void
    .line 6
.end method

.method public final setFocusAnimationScaleY(F)V
    .locals 6

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    sub-float v1, v0, p1

    .line 4
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    mul-float/2addr v1, v2

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentView:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 11
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v1, v2

    .line 16
    float-to-int v1, v1

    .line 17
    new-instance v2, Landroid/graphics/Rect;

    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentView:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    .line 22
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentView:Landroid/widget/LinearLayout;

    .line 26
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    .line 28
    move-result v4

    .line 31
    sub-int/2addr v4, v1

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v2, v5, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 37
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentView:Landroid/widget/LinearLayout;

    .line 42
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    cmpl-float p1, p1, v0

    .line 49
    if-nez p1, :cond_0

    .line 51
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackgroundBounds:Landroid/graphics/Rect;

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContentBackgroundBounds:Landroid/graphics/Rect;

    .line 57
    :goto_0
    int-to-float p1, v1

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 60
    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    return-void
    .line 7
.end method

.method public setIsFocusAnimationFlagActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsFocusAnimationFlagActive:Z

    .line 2
    return-void
    .line 4
.end method

.method public setRemoved()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    .line 3
    return-void
    .line 5
.end method

.method public setRevealParameters(Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

    .line 2
    return-void
    .line 4
.end method

.method public setSupportedMimeTypes(Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, [Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mOnReceiveContentListener:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$$ExternalSyntheticLambda0;

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    move-object v1, v0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mSupportedMimes:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mSupportedMimes:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 39
    return-void
    .line 42
.end method

.method public setViewRootImpl(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTestableViewRootImpl:Landroid/view/ViewRootImpl;

    .line 2
    return-void
    .line 4
.end method

.method public setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    return-void
    .line 4
.end method

.method public final updateSendButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 22
    return-void
    .line 25
.end method
