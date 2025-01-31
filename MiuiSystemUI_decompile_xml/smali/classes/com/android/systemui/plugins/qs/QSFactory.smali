.class public interface abstract Lcom/android/systemui/plugins/qs/QSFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Dependencies;
    value = {
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTileView;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_QS_FACTORY"
    version = 0x2
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_QS_FACTORY"

.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
.end method

.method public createTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method public abstract createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
.end method
