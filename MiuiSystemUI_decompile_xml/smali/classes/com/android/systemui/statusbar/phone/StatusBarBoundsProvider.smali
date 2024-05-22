.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final changeListeners:Ljava/util/Set;

.field public final endSideContent:Landroid/view/View;

.field public final layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

.field public previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

.field public final startSideContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 9
    new-instance p1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 11
    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 13
    move-result-object p2

    .line 16
    invoke-static {p3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 17
    move-result-object p3

    .line 20
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    .line 31
    return-void
    .line 33
.end method
