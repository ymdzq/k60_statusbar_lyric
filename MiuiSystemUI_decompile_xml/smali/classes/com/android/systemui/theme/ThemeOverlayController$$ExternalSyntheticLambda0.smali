.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

.field public final synthetic f$2:Landroid/content/om/FabricatedOverlay;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/systemui/monet/scheme/DynamicScheme;Landroid/content/om/FabricatedOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$2:Landroid/content/om/FabricatedOverlay;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->f$2:Landroid/content/om/FabricatedOverlay;

    .line 6
    check-cast p1, Landroid/util/Pair;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "android:color/system_"

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 19
    const-string v4, "_"

    .line 21
    invoke-static {v2, v3, v4, v0}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 29
    invoke-virtual {p1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 31
    move-result p1

    .line 34
    const/16 v1, 0x1c

    .line 35
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 38
    return-void
    .line 41
.end method
