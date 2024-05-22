.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/graphics/Rect;

    .line 8
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->$r8$lambda$Q3-pjSuu_VOtGeHI2UiX9ShEoHE(Landroid/graphics/Rect;)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :pswitch_1
    check-cast p1, Landroid/graphics/Rect;

    .line 15
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->$r8$lambda$U6is826XASLEgMmb8QpUxnXlE1M(Landroid/graphics/Rect;)I

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_2
    check-cast p1, Landroid/graphics/Rect;

    .line 22
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->$r8$lambda$fufjJ4sBiTuTHH82JradbDJSqZY(Landroid/graphics/Rect;)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :goto_0
    check-cast p1, Landroid/graphics/Rect;

    .line 29
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->$r8$lambda$Jvd2rU_hCORse4s9dziWFbQXqr8(Landroid/graphics/Rect;)I

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 36
.end method
