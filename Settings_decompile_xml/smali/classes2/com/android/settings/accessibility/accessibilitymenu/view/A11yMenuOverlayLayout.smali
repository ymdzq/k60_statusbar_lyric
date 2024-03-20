.class public final Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;
.super Ljava/lang/Object;
.source "A11yMenuOverlayLayout.java"


# static fields
.field private static final SHORTCUT_LIST_DEFAULT:[I


# instance fields
.field public a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mIsAdd:Z

.field public mainFrameLayout:Landroid/widget/FrameLayout;

.field private final service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

.field public windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->SHORTCUT_LIST_DEFAULT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x8
        0x7
        0x6
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const-string/jumbo v0, "window"

    .line 65
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f0

    .line 68
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    .line 71
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    sget v1, Lcom/android/settings/R$string;->accessibility_menu_service_name:I

    invoke-virtual {p1, v1}, Landroid/accessibilityservice/AccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->updateLayoutPosition()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->inflateLayoutAndSetOnTouchListener(Landroid/view/ViewGroup;)V

    .line 75
    new-instance v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-direct {v0, p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    .line 76
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->createShortcutList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->configureViewPagerAndFooter(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method private createShortcutList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    sget-object v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->SHORTCUT_LIST_DEFAULT:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 94
    new-instance v4, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;

    invoke-direct {v4, v3}, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;-><init>(I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getIntegerFromSpecificPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "integer"

    .line 196
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private inflateLayoutAndSetOnTouchListener(Landroid/view/ViewGroup;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->paged_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateLayoutPosition()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 106
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x50

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 110
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 111
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x800053

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 116
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x100

    or-int/2addr v0, v2

    .line 118
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x800055

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 124
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x100

    or-int/2addr v0, v2

    .line 125
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method public addMainFrame(Z)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "A11yMenuOverlayLayout"

    const-string v2, "addMainFrame: "

    .line 84
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mIsAdd:Z

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public disableNotificationIfNeeded(Landroid/content/Context;)V
    .locals 4

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_supersave_mode_open"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 175
    :goto_0
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->disableMenu(IZ)V

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->disableMenu(IZ)V

    const-string v1, "com.android.systemui"

    const-string/jumbo v3, "use_control_panel_setting_default"

    .line 181
    invoke-static {p1, v1, v3}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->getIntegerFromSpecificPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "use_control_panel"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 186
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->disableMenu(IZ)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->disableMenu(IZ)V

    :cond_2
    return-void
.end method

.method public final hideMenu()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->setVisibleFlag(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final updateMenuLayout()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    const-string v2, "A11yMenuOverlayLayout"

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "removeView: "

    .line 145
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->updateLayoutPosition()V

    .line 150
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->inflateLayoutAndSetOnTouchListener(Landroid/view/ViewGroup;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->a11yMenuViewPager:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;

    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->createShortcutList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->configureViewPagerAndFooter(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "addMainFrame: "

    .line 156
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    if-eqz p0, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 161
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->setVisibleFlag(Z)V

    :cond_3
    return-void
.end method
