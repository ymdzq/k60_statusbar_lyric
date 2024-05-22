.class public final synthetic Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 12
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->$r8$lambda$UVcjGO_uFaPo-4EjCh-5Rk9c2Ac(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;Ljava/util/function/Consumer;)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 20
    check-cast p0, Landroid/graphics/Bitmap;

    .line 22
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->$r8$lambda$8HPkPbcMj9UHNVYQi3buGAEFCFw(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
