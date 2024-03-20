.class public final Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;
.super Ljava/lang/Object;
.source "A11yMenuShortcut.java"


# instance fields
.field public imageSrc:I

.field public imgContentDescription:I

.field public labelText:I

.field public shortcutId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    const-string p1, "A11yMenuShortcut"

    const-string/jumbo v0, "setId to default UNSPECIFIED_ID as id is invalid."

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    iget p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->setShortcutResByShortcutId(ILcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 31
    :cond_1
    check-cast p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;

    .line 32
    iget p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    iget p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    return p0
.end method
