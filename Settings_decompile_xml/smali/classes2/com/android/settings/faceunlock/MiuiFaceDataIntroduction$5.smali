.class Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;
.super Landroid/database/ContentObserver;
.source "MiuiFaceDataIntroduction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->registerSltChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;Landroid/os/Handler;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 221
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSltOpen(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmSettingsPasswordBtn(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    .line 223
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->miuix_appcompat_button_bg_color_normal_dark:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 222
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmSettingsPasswordBtn(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->miuix_appcompat_button_text_color_guide_disabled_light:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmSettingsPasswordBtn(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 227
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmSettingsPasswordBtn(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->miuix_appcompat_button_text_color_guide_normal_light:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method
