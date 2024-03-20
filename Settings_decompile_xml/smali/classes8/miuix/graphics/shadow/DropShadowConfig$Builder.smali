.class public Lmiuix/graphics/shadow/DropShadowConfig$Builder;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/shadow/DropShadowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-direct {v0, p1}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(F)V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/graphics/shadow/DropShadowConfig;
    .locals 0

    .line 71
    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-object p0
.end method

.method public setOffsetYDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    return-object p0
.end method
