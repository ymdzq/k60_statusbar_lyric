.class public final Landroidx/window/core/AndroidLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/window/core/Logger;


# static fields
.field public static final INSTANCE:Landroidx/window/core/AndroidLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/core/AndroidLogger;

    .line 2
    invoke-direct {v0}, Landroidx/window/core/AndroidLogger;-><init>()V

    .line 4
    sput-object v0, Landroidx/window/core/AndroidLogger;->INSTANCE:Landroidx/window/core/AndroidLogger;

    .line 7
    return-void
    .line 9
.end method
