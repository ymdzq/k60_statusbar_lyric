.class Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;
.super Ljava/lang/Object;
.source "GroupOptionsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GroupOptionsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewInfo"
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mIsVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTextView(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mIsVisible:Z

    return-void
.end method

.method private shouldBeVisible()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mText:Ljava/lang/CharSequence;

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
.method setUpTextView()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
