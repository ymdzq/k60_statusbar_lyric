.class interface abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;
.super Ljava/lang/Object;
.source "SplitLoadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnSplitLoadFinishListener"
.end annotation


# virtual methods
.method public abstract onLoadFinish(Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method
