.class public final Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final noCorner:Lcom/google/android/material/shape/AbsoluteCornerSize;


# instance fields
.field public final bottomLeft:Lcom/google/android/material/shape/CornerSize;

.field public final bottomRight:Lcom/google/android/material/shape/CornerSize;

.field public final topLeft:Lcom/google/android/material/shape/CornerSize;

.field public final topRight:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 5
    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lcom/google/android/material/shape/CornerSize;

    .line 5
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lcom/google/android/material/shape/CornerSize;

    .line 7
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lcom/google/android/material/shape/CornerSize;

    .line 9
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lcom/google/android/material/shape/CornerSize;

    .line 11
    return-void
    .line 13
.end method
