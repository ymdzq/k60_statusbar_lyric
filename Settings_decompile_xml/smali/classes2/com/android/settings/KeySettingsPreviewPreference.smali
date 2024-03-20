.class public Lcom/android/settings/KeySettingsPreviewPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "KeySettingsPreviewPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;
    }
.end annotation


# instance fields
.field private final animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/FramesSequenceAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field private mActionRelativeLayout:Landroid/widget/RelativeLayout;

.field private mBackGroundDrawable:Landroid/widget/ImageView;

.field private mBottomDrawable:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDoublePowerDrawable:Landroid/widget/ImageView;

.field private mLongPressBottomDrawable:Landroid/widget/ImageView;

.field private mPowerDrawable:Landroid/widget/ImageView;

.field private mPreferenceKey:Ljava/lang/String;

.field private mThreeGestureDrawable:Landroid/widget/ImageView;

.field private mThreeLongPressDrawable:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$mchangeBackground(Lcom/android/settings/KeySettingsPreviewPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->changeBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBackground(Lcom/android/settings/KeySettingsPreviewPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->resetBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    .line 62
    sget p1, Lcom/android/settings/R$xml;->key_settings_preview:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    return-void
.end method

.method private addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V
    .locals 3

    .line 250
    invoke-static {p2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->-$$Nest$fgetmImgViewId(Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 251
    new-instance v0, Lcom/android/settings/FramesSequenceAnimation;

    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->-$$Nest$fgetmAnimArrayId(Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)I

    move-result p2

    const/16 v2, 0xa

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/settings/FramesSequenceAnimation;-><init>(Landroid/content/Context;Landroid/widget/ImageView;II)V

    if-eqz p3, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 258
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :cond_0
    new-instance p1, Lcom/android/settings/KeySettingsPreviewPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/KeySettingsPreviewPreference$1;-><init>(Lcom/android/settings/KeySettingsPreviewPreference;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/FramesSequenceAnimation;->setAnimationListener(Lcom/android/settings/FramesSequenceAnimation$AnimationListener;)V

    .line 282
    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private changeBackground()V
    .locals 2

    const-string v0, "launch_camera"

    .line 190
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_camera:I

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 191
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "screen_shot"

    .line 193
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_screen_shot:I

    .line 195
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "partial_screen_shot"

    .line 196
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_partial_screen_shot:I

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "launch_voice_assistant"

    .line 199
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_voice_assistant:I

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 200
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "launch_google_search"

    .line 202
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_voice_assistant:I

    .line 204
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "go_to_sleep"

    .line 205
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "turn_on_torch"

    .line 207
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_turn_on_torch:I

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "close_app"

    .line 210
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 211
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "split_screen"

    .line 213
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_split_screen:I

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 214
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "mi_pay"

    .line 216
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_mipay:I

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 217
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "show_menu"

    .line 219
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_show_menu:I

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 220
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_a
    const-string v0, "launch_recents"

    .line 222
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launch_recents:I

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 223
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    :cond_b
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    .line 227
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private processPreviewAnimation(Landroid/view/View;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->resetAnimationEnv()V

    const-string v0, "long_press_power_key"

    .line 103
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 105
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "double_click_power_key"

    .line 106
    iget-object v2, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 108
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->DOUBLE_CLICK_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "long_press_menu_key"

    .line 109
    iget-object v2, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 110
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 111
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_menu_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "long_press_menu_key_when_lock"

    .line 113
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 115
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_menu_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "long_press_home_key"

    .line 117
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 119
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_home_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "long_press_back_key"

    .line 121
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 123
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_back_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "key_combination_power_back"

    .line 125
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 127
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    .line 128
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_back_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "key_combination_power_home"

    .line 130
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 132
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    .line 133
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_home_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "key_combination_power_menu"

    .line 135
    iget-object v3, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 137
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    .line 138
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$dimen;->key_settings_click_menu_marginLeft:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "three_gesture_down"

    .line 140
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 142
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_DROP:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "three_gesture_long_press"

    .line 143
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 145
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)V

    goto :goto_0

    :cond_a
    const-string p1, "key_none"

    .line 146
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 147
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_b
    const-string p1, "launch_recents"

    .line 150
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 151
    invoke-direct {p0, v2}, Lcom/android/settings/KeySettingsPreviewPreference;->setBackgroundDrawable(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "animationanimation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/FramesSequenceAnimation;

    .line 160
    invoke-virtual {p1}, Lcom/android/settings/FramesSequenceAnimation;->start()V

    goto :goto_1

    :cond_c
    return-void
.end method

.method private resetAnimationEnv()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mBackGroundDrawable:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPowerDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mDoublePowerDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mBottomDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mLongPressBottomDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mThreeGestureDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mThreeLongPressDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FramesSequenceAnimation;

    .line 181
    invoke-virtual {v1}, Lcom/android/settings/FramesSequenceAnimation;->stop()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->resetBackground()V

    return-void
.end method

.method private resetBackground()V
    .locals 2

    const-string v0, "close_app"

    .line 232
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "show_menu"

    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "split_screen"

    .line 236
    iget-object v1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_show_menu:I

    .line 238
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    .line 241
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 240
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->keysettings_camera:I

    .line 235
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 234
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private setBackgroundDrawable(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mBackGroundDrawable:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 166
    sget p1, Lcom/android/settings/R$drawable;->keysettings_common_power:I

    goto :goto_0

    .line 167
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->keysettings_common_no_power:I

    .line 165
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->resetAnimationEnv()V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    sget v0, Lcom/android/settings/R$id;->key_settings_preview_action:I

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mActionRelativeLayout:Landroid/widget/RelativeLayout;

    .line 71
    sget v0, Lcom/android/settings/R$id;->key_settings_preview_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mBackGroundDrawable:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/android/settings/R$id;->key_power_click:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPowerDrawable:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/android/settings/R$id;->key_power_double_click:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mDoublePowerDrawable:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/android/settings/R$id;->key_click_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mBottomDrawable:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/android/settings/R$id;->key_long_press_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mLongPressBottomDrawable:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/android/settings/R$id;->key_three_gesture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mThreeGestureDrawable:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/android/settings/R$id;->key_three_long_press:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mThreeLongPressDrawable:Landroid/widget/ImageView;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/KeySettingsPreviewPreference;->processPreviewAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setCheckedAction(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mAction:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setPreferenceKey(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method
