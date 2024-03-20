.class public final Lcom/android/systemui/biometrics/ui/CredentialPasswordView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/CredentialView;
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final accessibilityManager$delegate:Lkotlin/Lazy;

.field public bottomInset:I

.field public credentialHeader:Landroid/view/View;

.field public credentialInput:Landroid/view/View;

.field public descriptionView:Landroid/widget/TextView;

.field public iconView:Landroid/widget/ImageView;

.field public subtitleView:Landroid/widget/TextView;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lcom/android/systemui/biometrics/ui/CredentialPasswordView$accessibilityManager$2;

    .line 5
    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/ui/CredentialPasswordView$accessibilityManager$2;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->accessibilityManager$delegate:Lkotlin/Lazy;

    .line 14
    return-void
    .line 16
.end method

.method private final getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->accessibilityManager$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    return-object p0
    .line 10
.end method


# virtual methods
.method public final init(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/AuthPanelController;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder;->bind$default(Landroid/view/ViewGroup;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/AuthPanelController;Z)V

    .line 2
    return-void
    .line 5
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->bottomInset:I

    .line 10
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 12
    if-eq v0, p1, :cond_a

    .line 14
    iput p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->bottomInset:I

    .line 16
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-lez p1, :cond_6

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object p1

    .line 29
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 30
    const/4 v2, 0x2

    .line 32
    if-ne p1, v2, :cond_6

    .line 33
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 35
    if-nez p1, :cond_0

    .line 37
    move-object p1, v1

    .line 39
    :cond_0
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 41
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 44
    if-nez p1, :cond_1

    .line 46
    move-object p1, v1

    .line 48
    :cond_1
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 49
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 54
    if-nez p1, :cond_2

    .line 56
    move-object p1, v1

    .line 58
    :cond_2
    const/4 v3, -0x1

    .line 59
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 63
    if-nez p1, :cond_3

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    move-object v1, p1

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 73
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 79
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    :cond_4
    move v0, v2

    .line 85
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    goto :goto_2

    .line 89
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 90
    if-nez p1, :cond_7

    .line 92
    move-object p1, v1

    .line 94
    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 98
    if-nez p1, :cond_8

    .line 100
    move-object p1, v1

    .line 102
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 106
    if-nez p1, :cond_9

    .line 108
    goto :goto_1

    .line 110
    :cond_9
    move-object v1, p1

    .line 111
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 112
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 115
    :cond_a
    return-object p2
    .line 118
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a08ff    # @id/subtitle

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->subtitleView:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f0a02a8    # @id/description

    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->descriptionView:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0a0412    # @id/icon

    .line 38
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->iconView:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->subtitleView:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0a050d    # @id/lockPassword

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/ImeAwareEditText;

    .line 64
    const v0, 0x7f0a00e9    # @id/auth_credential_header

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialHeader:Landroid/view/View;

    .line 73
    const v0, 0x7f0a00ea    # @id/auth_credential_input

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 82
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 84
    return-void
    .line 87
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 2
    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 6
    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 10
    move-result v4

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 14
    move-result v5

    .line 17
    move-object v0, p0

    .line 18
    move v1, p1

    .line 19
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 23
    move-result p1

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 27
    move-result p2

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 31
    move-result p3

    .line 34
    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->subtitleView:Landroid/widget/TextView;

    .line 35
    const/4 p5, 0x0

    .line 37
    if-nez p4, :cond_0

    .line 38
    move-object p4, p5

    .line 40
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result p4

    .line 44
    const/4 v0, 0x1

    .line 45
    const/4 v1, 0x0

    .line 46
    const/16 v2, 0x8

    .line 47
    if-ne p4, v2, :cond_1

    .line 49
    move p4, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p4, v1

    .line 53
    :goto_0
    if-eqz p4, :cond_2

    .line 54
    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->titleView:Landroid/widget/TextView;

    .line 56
    if-nez p4, :cond_3

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->subtitleView:Landroid/widget/TextView;

    .line 61
    if-nez p4, :cond_3

    .line 63
    :goto_1
    move-object p4, p5

    .line 65
    :cond_3
    invoke-virtual {p4}, Landroid/widget/TextView;->getBottom()I

    .line 66
    move-result p4

    .line 69
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->descriptionView:Landroid/widget/TextView;

    .line 70
    if-nez v3, :cond_4

    .line 72
    move-object v3, p5

    .line 74
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 75
    move-result v3

    .line 78
    if-ne v3, v2, :cond_5

    .line 79
    goto :goto_2

    .line 81
    :cond_5
    move v0, v1

    .line 82
    :goto_2
    if-eqz v0, :cond_6

    .line 83
    goto :goto_3

    .line 85
    :cond_6
    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->descriptionView:Landroid/widget/TextView;

    .line 86
    if-nez p4, :cond_7

    .line 88
    move-object p4, p5

    .line 90
    :cond_7
    invoke-virtual {p4}, Landroid/widget/TextView;->getBottom()I

    .line 91
    move-result p4

    .line 94
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 99
    move-result-object v0

    .line 102
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 103
    const/4 v1, 0x2

    .line 105
    if-ne v0, v1, :cond_d

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 108
    move-result p1

    .line 111
    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 112
    if-nez p4, :cond_8

    .line 114
    move-object p4, p5

    .line 116
    :cond_8
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    .line 117
    move-result p4

    .line 120
    sub-int/2addr p1, p4

    .line 121
    div-int/2addr p1, v1

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 123
    move-result p4

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 127
    move-result v0

    .line 130
    sub-int/2addr p4, v0

    .line 131
    div-int/2addr p4, v1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->descriptionView:Landroid/widget/TextView;

    .line 133
    if-nez v0, :cond_9

    .line 135
    move-object v0, p5

    .line 137
    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    .line 138
    move-result v0

    .line 141
    if-le v0, p3, :cond_16

    .line 142
    iget-object p3, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->iconView:Landroid/widget/ImageView;

    .line 144
    if-nez p3, :cond_a

    .line 146
    move-object p3, p5

    .line 148
    :cond_a
    invoke-virtual {p3}, Landroid/widget/ImageView;->getBottom()I

    .line 149
    move-result p3

    .line 152
    iget v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->bottomInset:I

    .line 153
    if-le p3, v0, :cond_b

    .line 155
    move p3, v0

    .line 157
    :cond_b
    sub-int/2addr p2, p3

    .line 158
    iget-object p3, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialHeader:Landroid/view/View;

    .line 159
    if-nez p3, :cond_c

    .line 161
    move-object p3, p5

    .line 163
    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 164
    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 168
    move-result v1

    .line 171
    invoke-virtual {p3, v0, p2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 172
    goto :goto_4

    .line 175
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 176
    move-result p3

    .line 179
    sub-int/2addr p3, p4

    .line 180
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 181
    if-nez v0, :cond_e

    .line 183
    move-object v0, p5

    .line 185
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 186
    move-result v0

    .line 189
    sub-int/2addr p3, v0

    .line 190
    div-int/2addr p3, v1

    .line 191
    add-int/2addr p3, p4

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 193
    move-result p4

    .line 196
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 197
    move-result v0

    .line 200
    sub-int/2addr p4, v0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 202
    if-nez v0, :cond_f

    .line 204
    move-object v0, p5

    .line 206
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 207
    move-result v0

    .line 210
    sub-int/2addr p4, v0

    .line 211
    div-int/2addr p4, v1

    .line 212
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 213
    move-result v0

    .line 216
    sub-int/2addr v0, p3

    .line 217
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 218
    if-nez v1, :cond_10

    .line 220
    move-object v1, p5

    .line 222
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 223
    move-result v1

    .line 226
    if-ge v0, v1, :cond_12

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 229
    move-result p3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 233
    if-nez v0, :cond_11

    .line 235
    move-object v0, p5

    .line 237
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 238
    move-result v0

    .line 241
    sub-int/2addr p3, v0

    .line 242
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->descriptionView:Landroid/widget/TextView;

    .line 243
    if-nez v0, :cond_13

    .line 245
    move-object v0, p5

    .line 247
    :cond_13
    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    .line 248
    move-result v0

    .line 251
    if-le v0, p3, :cond_15

    .line 252
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialHeader:Landroid/view/View;

    .line 254
    if-nez v0, :cond_14

    .line 256
    move-object v0, p5

    .line 258
    :cond_14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 259
    move-result v1

    .line 262
    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 263
    :cond_15
    move p1, p3

    .line 266
    :cond_16
    :goto_4
    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->credentialInput:Landroid/view/View;

    .line 267
    if-nez p2, :cond_17

    .line 269
    goto :goto_5

    .line 271
    :cond_17
    move-object p5, p2

    .line 272
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 273
    move-result p2

    .line 276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 277
    move-result p0

    .line 280
    invoke-virtual {p5, p4, p1, p2, p0}, Landroid/view/View;->layout(IIII)V

    .line 281
    return-void
    .line 284
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    move-result p2

    .line 12
    iget v1, p0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;->bottomInset:I

    .line 13
    sub-int/2addr p2, v1

    .line 15
    invoke-virtual {p0, v0, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    div-int/2addr v0, v1

    .line 24
    const/high16 v2, -0x80000000

    .line 25
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result p2

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object v2

    .line 43
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 44
    if-ne v2, v1, :cond_0

    .line 46
    invoke-virtual {p0, v0, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    .line 52
    :goto_0
    return-void
    .line 55
.end method
