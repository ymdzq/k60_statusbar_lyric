.class Lcom/android/wm/shell/compatui/CompatUILayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a05d4    # @id/miui_size_compat_restart_button

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    const v1, -0x333334

    .line 14
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v1

    .line 20
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 21
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 23
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 27
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 30
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 33
    const/4 v5, 0x0

    .line 35
    invoke-direct {v4, v1, v5, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0a05d3    # @id/miui_size_compat_hint

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    const v1, 0x7f0a05c6    # @id/miui_compat_mode_hint_text

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/TextView;

    .line 67
    const v4, 0x7f130781    # @string/miui_restart_button_description 'Restart for best display'

    .line 69
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const v1, 0x7f0a05c7    # @id/miui_compat_restart_button

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/ImageButton;

    .line 82
    new-instance v4, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda1;

    .line 84
    invoke-direct {v4, p0, v0}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/widget/LinearLayout;)V

    .line 86
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 92
    const v0, 0x7f0a088f    # @id/size_compat_restart_button

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/ImageButton;

    .line 102
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 104
    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;

    .line 112
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    const v0, 0x7f0a088e    # @id/size_compat_hint

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f0a0214    # @id/compat_mode_hint_text

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 136
    const v2, 0x7f130a30    # @string/restart_button_description 'Tap to restart this app for a better view.'

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 144
    const/4 v2, 0x2

    .line 146
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0a01bc    # @id/camera_compat_treatment_button

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v0

    .line 159
    check-cast v0, Landroid/widget/ImageButton;

    .line 160
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 162
    const/4 v4, 0x3

    .line 164
    invoke-direct {v1, p0, v4}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;

    .line 171
    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    const v0, 0x7f0a01ba    # @id/camera_compat_dismiss_button

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/ImageButton;

    .line 186
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 188
    const/4 v3, 0x4

    .line 190
    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;

    .line 197
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    const v0, 0x7f0a01bb    # @id/camera_compat_hint

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 208
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/LinearLayout;

    .line 212
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;

    .line 214
    const/4 v2, 0x5

    .line 216
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
    .line 223
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 7
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 11
    if-nez p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateSurfacePosition()V

    .line 19
    :goto_0
    return-void
    .line 22
.end method

.method public final setViewVisibility(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result p2

    .line 15
    if-ne p2, p1, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    return-void
    .line 22
.end method

.method public final updateCameraTreatmentButton(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    const v1, 0x7f080bb7    # @drawable/camera_compat_treatment_suggested_ripple 'res/drawable/camera_compat_treatment_suggested_ripple.xml'

    .line 5
    goto :goto_0

    .line 8
    :cond_0
    const v1, 0x7f080bb5    # @drawable/camera_compat_treatment_applied_ripple 'res/drawable/camera_compat_treatment_applied_ripple.xml'

    .line 9
    :goto_0
    if-ne p1, v0, :cond_1

    .line 12
    const p1, 0x7f13024c    # @string/camera_compat_treatment_suggested_button_description 'Camera issues?\nTap to refit'

    .line 14
    goto :goto_1

    .line 17
    :cond_1
    const p1, 0x7f13024b    # @string/camera_compat_treatment_applied_button_description 'Didn’t fix it?\nTap to revert'

    .line 18
    :goto_1
    const v0, 0x7f0a01bc    # @id/camera_compat_treatment_button

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageButton;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0a01bb    # @id/camera_compat_hint

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Landroid/widget/LinearLayout;

    .line 51
    const v0, 0x7f0a0214    # @id/compat_mode_hint_text

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p0

    .line 59
    check-cast p0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-void
    .line 65
.end method
