.class public final synthetic Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 9
    sget v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->$r8$clinit:I

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 17
    const v0, 0x7f07120d    # @dimen/tv_notification_blur_radius '31.0dp'

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object v0

    .line 28
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    const v2, 0x7f060923    # @color/tv_notification_blur_background_color '#a0383838'

    .line 31
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    .line 34
    move-result v2

    .line 37
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    move-result-object p1

    .line 55
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 56
    const v1, 0x7f060924    # @color/tv_notification_default_background_color '#383838'

    .line 58
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    .line 61
    move-result v1

    .line 64
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 71
    move-result-object p0

    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 76
    :goto_0
    return-void
    .line 79
.end method
