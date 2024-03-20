.class public final Lcom/android/settings/utils/TabletUtils;
.super Ljava/lang/Object;
.source "TabletUtils.java"


# static fields
.field public static IS_TABLET:Z = false

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static attachApplication(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settings/utils/TabletUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 39
    sput-object p0, Lcom/android/settings/utils/TabletUtils;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 42
    invoke-static {p0}, Lcom/android/settings/utils/TabletUtils;->changeDeviceForm(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 44
    invoke-static {p0}, Lcom/android/settings/utils/TabletUtils;->changeDeviceForm(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static changeDeviceForm(I)V
    .locals 0

    .line 0
    return-void
.end method
