.class public final Landroidx/slice/widget/ActionRow$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/ActionRow;

.field public final synthetic val$action:Landroidx/slice/SliceItem;

.field public final synthetic val$input:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/ActionRow$2;->this$0:Landroidx/slice/widget/ActionRow;

    .line 2
    iput-object p2, p0, Landroidx/slice/widget/ActionRow$2;->val$action:Landroidx/slice/SliceItem;

    .line 4
    iput-object p3, p0, Landroidx/slice/widget/ActionRow$2;->val$input:Landroidx/slice/SliceItem;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/ActionRow$2;->this$0:Landroidx/slice/widget/ActionRow;

    .line 2
    iget-object v1, p0, Landroidx/slice/widget/ActionRow$2;->val$action:Landroidx/slice/SliceItem;

    .line 4
    iget-object p0, p0, Landroidx/slice/widget/ActionRow$2;->val$input:Landroidx/slice/SliceItem;

    .line 6
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/app/RemoteInput;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-nez p0, :cond_0

    .line 15
    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    instance-of v3, v0, Landroid/view/View;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    move-object v2, v0

    .line 34
    check-cast v2, Landroid/view/View;

    .line 35
    sget-object v3, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 37
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/slice/widget/RemoteInputView;

    .line 43
    if-eqz v2, :cond_1

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 53
    goto/16 :goto_2

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 57
    move-result v0

    .line 60
    instance-of v3, p1, Landroid/widget/TextView;

    .line 61
    const/4 v4, 0x0

    .line 63
    if-eqz v3, :cond_4

    .line 64
    move-object v3, p1

    .line 66
    check-cast v3, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 69
    move-result-object v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 75
    move-result-object v5

    .line 78
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineWidth(I)F

    .line 79
    move-result v5

    .line 82
    float-to-int v5, v5

    .line 83
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 84
    move-result v6

    .line 87
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 88
    move-result v3

    .line 91
    add-int/2addr v3, v6

    .line 92
    add-int/2addr v3, v5

    .line 93
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 94
    move-result v0

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 98
    move-result v3

    .line 101
    div-int/lit8 v0, v0, 0x2

    .line 102
    add-int/2addr v0, v3

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 105
    move-result v3

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 109
    move-result p1

    .line 112
    div-int/lit8 p1, p1, 0x2

    .line 113
    add-int/2addr p1, v3

    .line 115
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    .line 116
    move-result v3

    .line 119
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 120
    move-result v5

    .line 123
    add-int v6, v0, p1

    .line 124
    sub-int/2addr v5, p1

    .line 126
    add-int v7, v0, v5

    .line 127
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 129
    move-result v6

    .line 132
    sub-int/2addr v3, v0

    .line 133
    add-int v7, v3, p1

    .line 134
    add-int/2addr v3, v5

    .line 136
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 137
    move-result v3

    .line 140
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 141
    move-result v3

    .line 144
    invoke-virtual {v2, v0, p1, v3}, Landroidx/slice/widget/RemoteInputView;->setRevealParameters(III)V

    .line 145
    invoke-virtual {v2, v1}, Landroidx/slice/widget/RemoteInputView;->setAction(Landroidx/slice/SliceItem;)V

    .line 148
    filled-new-array {p0}, [Landroid/app/RemoteInput;

    .line 151
    move-result-object p1

    .line 154
    invoke-virtual {v2, p1, p0}, Landroidx/slice/widget/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 155
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 158
    move-result p0

    .line 161
    if-eqz p0, :cond_5

    .line 162
    iget p0, v2, Landroidx/slice/widget/RemoteInputView;->mRevealCx:I

    .line 164
    iget p1, v2, Landroidx/slice/widget/RemoteInputView;->mRevealCy:I

    .line 166
    iget v0, v2, Landroidx/slice/widget/RemoteInputView;->mRevealR:I

    .line 168
    int-to-float v0, v0

    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-static {v2, p0, p1, v1, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 172
    move-result-object p0

    .line 175
    const-wide/16 v0, 0xc8

    .line 176
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 178
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 181
    :cond_5
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object p0, v2, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 187
    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 190
    iget-object p0, v2, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 193
    iput-boolean p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 195
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 197
    move-result-object p1

    .line 200
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 201
    move-result p1

    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 205
    iget-object p0, v2, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 208
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 210
    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    .line 213
    :goto_2
    return-void
    .line 216
.end method
