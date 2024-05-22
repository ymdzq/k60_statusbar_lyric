.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p3, :cond_1

    .line 4
    const/4 v1, 0x6

    .line 6
    if-eq p2, v1, :cond_0

    .line 7
    const/4 v1, 0x5

    .line 9
    if-eq p2, v1, :cond_0

    .line 10
    const/4 v1, 0x4

    .line 12
    if-ne p2, v1, :cond_1

    .line 13
    :cond_0
    move p2, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p2, v0

    .line 17
    :goto_0
    if-eqz p3, :cond_2

    .line 18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    move-result v1

    .line 23
    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    move-result p3

    .line 33
    if-nez p3, :cond_2

    .line 34
    move p3, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move p3, v0

    .line 38
    :goto_1
    if-nez p2, :cond_4

    .line 39
    if-eqz p3, :cond_3

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    return v0

    .line 44
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 45
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 47
    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    .line 49
    move-result p2

    .line 52
    if-gtz p2, :cond_5

    .line 53
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 55
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 57
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 59
    if-eqz p2, :cond_6

    .line 61
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput()V

    .line 65
    :cond_6
    return p1
    .line 68
.end method
