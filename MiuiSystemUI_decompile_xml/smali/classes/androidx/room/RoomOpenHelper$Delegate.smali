.class public abstract Landroidx/room/RoomOpenHelper$Delegate;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public abstract createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onPostMigrate()V
.end method

.method public abstract onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
.end method
