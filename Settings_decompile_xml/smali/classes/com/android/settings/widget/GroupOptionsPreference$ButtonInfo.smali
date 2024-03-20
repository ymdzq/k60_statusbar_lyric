.class Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;
.super Ljava/lang/Object;
.source "GroupOptionsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GroupOptionsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mIsEnabled:Z

.field private mIsVisible:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsEnabled:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method

.method private shouldBeVisible()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setUpButton()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 367
    invoke-direct {p0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
