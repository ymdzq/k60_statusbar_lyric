.class public final Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBlendMode:Landroid/graphics/BlendMode;

.field public final mColor:I


# direct methods
.method public constructor <init>(ILandroid/graphics/BlendMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    .line 5
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    .line 7
    return-void
    .line 9
.end method
