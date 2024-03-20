.class Lcom/android/settings/dangerousoptions/DangerousOptionsUtil$1;
.super Landroid/util/SparseIntArray;
.source "DangerousOptionsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v0, 0x20

    .line 64
    sget v1, Lcom/android/settings/R$string;->switch_access_service_on:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x40

    .line 65
    sget v1, Lcom/android/settings/R$string;->switch_select_to_speak_on:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x400

    .line 66
    sget v1, Lcom/android/settings/R$string;->debug_layout:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x800

    .line 67
    sget v1, Lcom/android/settings/R$string;->show_hw_screen_updates:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x1000

    .line 68
    sget v1, Lcom/android/settings/R$string;->strict_mode:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x2000

    .line 69
    sget v1, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x4000

    .line 70
    sget v1, Lcom/android/settings/R$string;->show_screen_updates:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x80

    .line 71
    sget v1, Lcom/android/settings/R$string;->accessibility_toggle_high_text_contrast_preference_title:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
