.class public interface abstract Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_MIUI_QS_TILE"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_MIUI_QS_TILE"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getAllPluginTiles()Ljava/util/Map;
.end method

.method public abstract getDefaultTileWithOrder()Ljava/lang/String;
.end method

.method public abstract getStockTileWithOrder()Ljava/lang/String;
.end method
