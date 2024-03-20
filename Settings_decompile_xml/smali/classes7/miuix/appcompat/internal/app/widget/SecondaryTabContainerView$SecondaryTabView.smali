.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.source "SecondaryTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryTabView"
.end annotation


# instance fields
.field private final mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

.field private mBadgeDisappearOnClick:Z

.field private mBadgeNeeded:Z

.field private mCustomView:Landroid/view/View;

.field private mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 254
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    const/4 p2, 0x1

    .line 256
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    .line 268
    new-instance p2, Lmiuix/appcompat/widget/BadgeDrawable;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->initView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->setBadgeNeeded(Z)V

    return-void
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;)Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    return p0
.end method

.method private attachBadge()V
    .locals 1

    .line 316
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private detachBadge()V
    .locals 0

    .line 310
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    :cond_0
    return-void
.end method

.method private initView(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 272
    invoke-super {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private setBadgeNeeded(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    .line 288
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    return-void
.end method

.method private updateBadge()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->attachBadge()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->detachBadge()V

    :goto_0
    return-void
.end method

.method private updateIconView()V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method attach(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 277
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 278
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->update()V

    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 381
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 395
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateIconView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    return-void
.end method

.method public update()V
    .locals 12

    .line 322
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 323
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 325
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    .line 326
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p0, v1, v3, v2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    goto/16 :goto_2

    .line 331
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 333
    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    .line 336
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 338
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v7, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, -0x2

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    .line 342
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 344
    iput v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-virtual {p0, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 347
    invoke-virtual {p0, v5}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIconView(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 353
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    if-eqz v6, :cond_6

    if-nez v3, :cond_5

    .line 359
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 361
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 362
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 363
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 365
    invoke-virtual {p0, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setTextView(Landroid/widget/TextView;)V

    goto :goto_1

    .line 367
    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 371
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 375
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    return-void
.end method
