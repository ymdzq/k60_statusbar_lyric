.class public final synthetic Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-static {p0, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->$r8$lambda$e3-1k5-GjeUVuhL1h1PPhN_5bIU(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V

    return-void
.end method
