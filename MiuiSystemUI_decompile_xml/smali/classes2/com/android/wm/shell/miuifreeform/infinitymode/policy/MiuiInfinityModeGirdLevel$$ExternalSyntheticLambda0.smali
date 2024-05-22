.class public final synthetic Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGridLevelApplied(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->$r8$lambda$dSyidIEmn7hWFgtNVH_x0Z6bKSk(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->$r8$lambda$0Ut8qCsYVj5ohPPx64jg6-zw1bw(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->$r8$lambda$ON4VNwuJ6RNWgXT6wfbAMKnur9o(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 26
.end method
