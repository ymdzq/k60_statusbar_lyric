.class public abstract Landroidx/room/RoomOpenHelper$Delegate;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegate"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    return-void
.end method


# virtual methods
.method protected abstract createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
.end method
